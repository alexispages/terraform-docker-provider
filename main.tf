terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.1"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Pulls the image
resource "docker_image" "my_image" {
  name = var.image_name
}

# Create a container
resource "docker_container" "container_name" {
  count = var.numberof_containers
  image = docker_image.my_image.image_id
  name  = "${var.container_name}_${count.index + 1}"
  ports {
    internal = 80
    external = var.starting_port + count.index + 1
  }
}
