module "compute_image" {
  source          = "../modules/compute-images"
  project_id      = var.project_id
  migration_batch = var.migration_batch
  source_vm_name  = var.source_vm_name
  snapshot_ids    = length(keys(var.snapshot_ids)) != 0 ? var.snapshot_ids : module.compute_snapshot.snapshot_ids
}