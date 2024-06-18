output "standard_srv" {
  description = "the connection url to the database"
  value       = mongodbatlas_cluster.this.connection_strings[0].standard_srv
}

output "user" {
  description = "username and password to connect to the database"
  value = {
    username = var.database_user.username
    password = random_password.this.result
  }
  sensitive = true
}
