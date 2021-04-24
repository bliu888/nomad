data_dir = "/home/bill/work/test/nomad/serverdata1"

acl {
  enabled = true
}

name = "server1"

server {
  enabled          = true
  bootstrap_expect = 3
  server_join {
    retry_join = ["127.0.0.1:4648"]
  }
}
