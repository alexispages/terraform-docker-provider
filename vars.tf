variable "image_name" {
  description = "Docker image name to use"
  type        = string
  default     = "nginx:latest"
}

variable "container_name" {
  description = "Define containers' names"
  type        = string
  default     = "nginx"
}

variable "container_memory" {
  description = "Memory allocated to each container"
  type        = string
  default     = "256m"
}

variable "privileged" {
  description = "Run container in privileged mode or not"
  type        = bool
  default     = false
}

variable "numberof_containers" {
  description = "Number of containers to spawn"
  type        = number
  default     = 3
}

variable "starting_port" {
  description = "Starting port number to use for container ports"
  type        = number
  default     = 3000
}
