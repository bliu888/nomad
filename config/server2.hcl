data_dir = "/home/bill/work/test/nomad/serverdata2"

acl {
  enabled = true
}

name = "server2"

server {
  enabled          = true
  bootstrap_expect = 3
  server_join {
    retry_join = ["127.0.0.1:4648"]
  }
}

ports {
  http = 14646
  rpc  = 14647
  serf = 14648
}
