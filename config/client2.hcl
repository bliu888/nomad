#datacenter = "dc1"

data_dir = "/home/bill/work/nomad/clientdata2"

acl {
  enabled = true
}

client {
  enabled = true
  servers = ["127.0.0.1:4647"]
}

ports {
  http = 6646
  #rpc  = 4647
  #serf = 4648
}

plugin "raw_exec" {
  config {
    enabled = true
	}
}
