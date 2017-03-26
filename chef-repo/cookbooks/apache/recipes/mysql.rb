mysql_service 'test' do
  version '5.7'
  bind_address '0.0.0.0'
  port '3306'
  initial_root_password 'foobar123!'
  action [:create]
end

bash "start" do
  code "setenforce 0"
  notifies :start, "mysql_service[test]"
end

