variable "project_name" {
  description = "The name of the project"
  default="teste_docker_"
}

variable "memory" {
  description = "The memory size of the lambda function"
  default=256
}

variable "image_url" {
  description = "Image docker URI"
  default="915783766460.dkr.ecr.sa-east-1.amazonaws.com/teste-docker-lambda:latest"
}