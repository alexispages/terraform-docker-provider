# terraform-docker-provider

This Terraform module creates 3 Nginx Docker containers by default. 

## Usage

```hcl
module "nginx" {
    source = "./terraform-docker-provider"
    image_name = "nginx:latest"
    container_name = "nginx"
    container_memory = "256m"
    container_privileged = false
    container_count = 3
    starting_port = 3000
    }
```

## Variable details
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| `image_name` | Docker image name to use for the containers | `string` | "nginx:latest" | no |
| `container_name` | Name given to created containers | `string` | "nginx" | no |
| `container_memory` | Memory allocated to each container | `string` | 256m | no |
| `container_privileged` | Run container in privileged mode or not | `bool` | false | no |
| `container_count` | Number of containers to spawn | `number` | 3 | no |
| `starting_port` | Starting port number used by containers | `number` | 3000 | no |

## Outputs

| Name | Description |
|------|-------------|
| `container_names` | A list of the container names |

## Requirements

| Name | Version |
|------|---------|
| `Terraform` | 1.0 or later |
| `Docker` | 23.0.0 or later |

## License

This module is licensed under the MIT License. Please see the LICENSE file for full details.
