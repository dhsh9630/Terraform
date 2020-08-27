terraform {
  backend "remote" {
    organization = "deepdivelab"

    workspaces {
      name = "terraform-aws"
    }
  }
}
