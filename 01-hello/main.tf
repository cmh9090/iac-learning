terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
    random = {
      source = "hashicorp/random"
    }
  }
}

resource "random_pet" "name" {
  length = 3
}

resource "local_file" "hello" {
  filename = "${path.module}/hello-${random_pet.name.id}.txt"
  content  = "You can recover from this!!"
}

output "file_name" {
  value = local_file.hello.filename
}