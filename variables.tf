variable "organization_id" {
  description = "the organization in which to create the cluster"
  type        = string
}

variable "environment" {
  description = "the name of the environment for the cluster"
  type        = string
}

variable "cluster_name" {
  description = "the name of the cluster"
  type        = string
}

variable "database_user" {
  description = "the user to create on the cluster and its database name the user should "
  type = object({
    username      = string
    database_name = string
  })
}
