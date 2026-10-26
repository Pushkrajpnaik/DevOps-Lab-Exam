terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "local_file" "ehr_env" {
  filename = "${path.module}/ehr.env"
  content  = "URL=http://localhost:30092"
}
