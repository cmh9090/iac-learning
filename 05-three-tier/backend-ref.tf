terraform {
  backend "s3" {
    bucket       = "cmh-terra-bucket-name-tfstate"
    key          = "three-tier/terraform.tfstate"
    region       = "ap-southeast-1"
    use_lockfile = true
  }
}