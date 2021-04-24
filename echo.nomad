job "echo" {
  datacenters = ["dc1"]
  group "cache" {
    task "echo" {
      driver = "raw_exec"	
      config {
        command="/bin/echo"
        args=["hi from nomad"]
      }
    }
  }
}
