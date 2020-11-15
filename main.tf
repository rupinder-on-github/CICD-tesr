terraform {
  backend "artifactory" {
    username = "admin"
    password = "Rupi@123"
    url      = "http://dell:8082/artifactory"
    repo     = "terrform-test"
  }
}