output "caprover_dashboard" {
  value = "http://${oci_core_instance.caprover_main.public_ip}:3000/ (wait 3-5 minutes to finish CapRover installation)"
}

output "caprover_worker_ips" {
  value = [for instance in oci_core_instance.caprover_worker : "${instance.public_ip} (use it to add the server in CapRover Dashboard)"]
}
