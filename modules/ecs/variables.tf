variable "cluster_name" {
  description = "The name of the ECS cluster."
}

variable "task_family" {
  description = "The family of the ECS task definition."
}

variable "cpu" {
  description = "The amount of CPU units used by the task."
}

variable "memory" {
  description = "The amount of memory (in MiB) used by the task."
}

variable "container_name" {
  description = "The name of the container."
}

variable "container_image" {
  description = "The container image URL in ECR."
}

variable "container_port" {
  description = "The port exposed by the container."
}

variable "service_name" {
  description = "The name of the ECS service."
}

variable "desired_count" {
  description = "Number of tasks to run in the ECS service."
}

variable "subnet_ids" {
  description = "List of subnet IDs for the ECS service."
  type        = list(string)
}

variable "security_group_id" {
  description = "The security group ID for the ECS service."
}
