data_dir = "/home/bill/work/test/nomad/serverdata3"

acl {
  enabled = true
}

name = "server3"

server {
  enabled          = true
  bootstrap_expect = 3
  server_join {
    retry_join = ["127.0.0.1:4648"]
  }
}

ports {
  http = 24646
  rpc  = 24647
  serf = 24648
}
