remote_state {
    backend = "gcs"
    config = {
      bucket = "terraform-batch-6"
      prefix    = "${path_relative_to_include()}/terraform.tfstate"
      credentials = "/home/trainer/credentials/gcs.json"
    }
}

inputs = {
  project = "level-surfer-383303"
  region = "asia-southeast2"
  zone = "asia-southeast2-a"
  credentials = "/home/trainer/credentials/credentials-staging.json"

  name = "${basename(get_terragrunt_dir())}"
  machine_type = "e2-micro"
  image = "ubuntu-os-cloud/ubuntu-2004-lts"
}