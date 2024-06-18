resource "random_password" "this" {
  length = 12
}

resource "mongodbatlas_database_user" "this" {
  username           = var.database_user.username
  password           = random_password.this.result
  project_id         = mongodbatlas_project.this.id
  auth_database_name = "admin"

  roles {
    role_name     = "readWrite"
    database_name = var.database_user.database_name
  }
}
