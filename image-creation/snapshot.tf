module "compute_snapshot" {
  source                = "../modules/compute-snapshots"
  source_boot_disk_name = var.source_boot_disk_name
  source_add_disk_names = var.source_add_disk_names
  project_id            = var.project_id
  source_vm_zone        = var.source_vm_zone
  source_vm_name        = var.source_vm_name
  labels                = var.labels
  snapshots_region      = var.snapshots_region
  migration_batch       = var.migration_batch
  snapshot_timeouts     = var.snapshot_timeouts
}