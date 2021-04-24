job "test1" {
  datacenters = ["dc1"]
  type = "batch"
  group "group1" {
    count = 5 
    task "script" {
    	driver = "raw_exec"
    	config {
    		command = "/bin/sleep"
    		args = ["5"]
      }
    }
  }
}
