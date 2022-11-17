locals {
  labels = merge(var.labels, {
    migration_batch = var.migration_batch
  source_vm = var.source_vm_name })
}
