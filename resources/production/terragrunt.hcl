remote_state {
    backend = "gcs"
    config = {
      bucket = "terraform-batch-6"
      prefix    = "${path_relative_to_include()}/terraform.tfstate"
      credentials = ""
    }
}

inputs = {
  project = "studilabs-101"
  region = "asia-southeast2"
  zone = "asia-southeast2-a"
  credentials = ""

  name = "${basename(get_terragrunt_dir())}"
  machine_type = "e2-small"
  image = "ubuntu-os-cloud/ubuntu-2004-lts"
}