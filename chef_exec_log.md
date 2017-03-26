# command
`chef exec cap development chef:all | tee chef_exec_log.txt`

```
00:00 chef:archive
      01 sudo touch /home/t.k.shimesaba/chef-train2/chef-repo/client.rb && sudo chown t.k.shimesaba:t.k.shimesaba /home/t.k.shimesaba/chef-train2/chef-repo/client.rb
    ✔ 01 t.k.shimesaba@localhost 0.022s
      02 sudo tar -czf /tmp/chef-repo.tar.gz -C /home/t.k.shimesaba/chef-train2 chef-repo --exclude log
    ✔ 02 t.k.shimesaba@localhost 0.016s
chef-repo.tar.gz

sent 39894 bytes  received 373 bytes  26844.67 bytes/sec
total size is 39810  speedup is 0.99
00:00 chef:sync_archive
      01 sudo rm -rf /tmp/chef-repo
    ✔ 01 t.k.shimesaba@10.140.0.3 0.406s
      02 tar -zxf /tmp/chef-repo.tar.gz -C /tmp
    ✔ 02 t.k.shimesaba@10.140.0.3 0.023s
"chef-repo"
00:00 chef:run
      01 cd /tmp/chef-repo && sudo chef-client -z -j nodes/development/node1.json --config client.rb
      01 Starting Chef Client, version 12.10.24
      01 resolving cookbooks for run list: ["apache"]
      01 
      01 ================================================================================
      01 Error Resolving Cookbooks for Run List:
      01 ================================================================================
      01 
      01 Missing Cookbooks:
      01 ------------------
      01 Could not satisfy version constraints for: mysql
      01 
      01 Expanded Run List:
      01 ------------------
      01 * apache
      01 
      01 Platform:
      01 ---------
      01 x86_64-linux
      01 
      01 
      01 
      01 Running handlers:
      01 [2017-03-26T15:26:15+00:00] ERROR: Running exception handlers
      01 Running handlers complete
      01 [2017-03-26T15:26:15+00:00] ERROR: Exception handlers complete
      01 Chef Client failed. 0 resources updated in 02 seconds
      01 [2017-03-26T15:26:15+00:00] FATAL: Stacktrace dumped to /tmp/chef-repo/local-mode-cache/cache/chef-stacktrace.out
      01 [2017-03-26T15:26:15+00:00] FATAL: Please provide the contents of the stacktrace.out file if you file a bug report
      01 [2017-03-26T15:26:15+00:00] ERROR: 412 "Precondition Failed"
      01 [2017-03-26T15:26:17+00:00] FATAL: Chef::Exceptions::ChildConvergeError: Chef run process exited unsuccessfully (exit code 1)
```
