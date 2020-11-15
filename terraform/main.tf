
provider "aws" {
  region                  = "${var.region}"
  # shared_credentials_file = "~/.aws/credentials"
  # profile                 = "development"
}

terraform {
      backend "artifactory" {
        username = "admin"
        # never actually put passwords in code, but that's beyond our scope today
        password = "Rupi@123"
        url      = "http://localhost:8082/artifactory"
        repo     = "terrform-test"
        subpath  = "terraform-state"
      }
    }