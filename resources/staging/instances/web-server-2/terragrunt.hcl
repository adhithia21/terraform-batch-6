terraform {
  source = "../../../..//module/gcp/instances"
}

include {
  path   = find_in_parent_folders()
}

inputs = {
  tags = ["mariadb", "allow-db-port", "allow-ssh"]
  network = "vpc-staging"
  subnetwork = "subnet-1"
}
