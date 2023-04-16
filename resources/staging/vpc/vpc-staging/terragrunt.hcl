terraform {
  source = "../../../..//module/gcp/vpc"
}

include {
  path   = find_in_parent_folders()
}

inputs = {
  subnet_name = ["subnet-1", "subnet-2"]
  ip_cidr_range = ["172.10.0.0/24", "172.20.0.0/24"]
  subnet_region = ["asia-southeast2", "asia-southeast1"]
}