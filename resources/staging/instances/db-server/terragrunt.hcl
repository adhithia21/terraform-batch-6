terraform {
  source = "../../../..//module/gcp/instances"
}

include {
  path   = find_in_parent_folders()
}

inputs = {
  tags = ["mariadb", "allow-db-port"]
  network = "default"
  subnetwork = "default"
}
