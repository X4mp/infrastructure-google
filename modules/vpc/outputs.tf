output "vpc_name" {
  value = google_compute_network.vpc.name
}

output "subnet_name" {
  value = google_compute_subnetwork.subnet.name
}

output "subnet_range" {
  value = google_compute_subnetwork.subnet.secondary_ip_range.1.range_name
}