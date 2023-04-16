remote_state {
    backend = "gcs"
    config = {
      bucket = "terraform-batch-6"
      prefix    = "${path_relative_to_include()}/terraform.tfstate"
      credentials = "/home/trainer/credentials/gcs.json"
    }
}

inputs = {
  project = "studilabs-101"
  region = "asia-southeast2"
  zone = "asia-southeast2-a"
  credentials = "/home/trainer/credentials/credentials-production.json"

  name = "${basename(get_terragrunt_dir())}"
  machine_type = "e2-small"
  image = "ubuntu-os-cloud/ubuntu-2004-lts"
}