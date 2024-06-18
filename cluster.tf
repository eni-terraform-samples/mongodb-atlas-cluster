resource "mongodbatlas_project" "this" {
  org_id = var.organization_id

  name = var.environment
}

resource "mongodbatlas_cluster" "this" {
  project_id   = mongodbatlas_project.this.id
  name         = var.cluster_name
  cluster_type = "REPLICASET"
  replication_specs {
    num_shards = 1
    regions_config {
      region_name     = "EUROPE_WEST_9"
      electable_nodes = 3
      priority        = 7
      read_only_nodes = 0
    }
  }
  cloud_backup                 = true
  auto_scaling_disk_gb_enabled = true
  mongo_db_major_version       = "7.0"

  # Provider Settings "block"
  provider_name               = "GCP"
  provider_instance_size_name = "M30"
}
