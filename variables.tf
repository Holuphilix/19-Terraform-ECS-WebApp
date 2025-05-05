variable "container_image" {
  description = "The Docker image URL for the container stored in ECR."
}

variable "security_group_id" {
  description = "The security group ID to assign to the ECS service to control inbound and outbound traffic."
}

# === ECS Configurable Defaults ===
variable "cluster_name" {
  description = "The name of the ECS cluster."
  default     = "ecs-cluster"
}

variable "task_family" {
  description = "The name of the ECS task family."
  default     = "ecs-webapp-task"
}

variable "cpu" {
  description = "The number of CPU units to allocate for the ECS task."
  default     = "256"
}

variable "memory" {
  description = "The amount of memory (in MB) to allocate for the ECS task."
  default     = "512"
}

variable "container_name" {
  description = "The name of the container in the ECS task."
  default     = "webapp"
}

variable "container_port" {
  description = "The port on which the container will listen."
  default     = 80
}

variable "service_name" {
  description = "The name of the ECS service."
  default     = "webapp-service"
}

variable "desired_count" {
  description = "The number of task instances to run in the ECS service."
  default     = 1
}

variable "subnet_ids" {
  description = "List of subnet IDs for ECS service deployment."
  type        = list(string)
}

