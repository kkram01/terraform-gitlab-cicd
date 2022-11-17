locals {
  source_disk_list = toset(concat(var.source_boot_disk_name, var.source_add_disk_names))
  snapshot_suffix  = formatdate("DD-MM-YYYY't'-hh-mm", timestamp())
  labels = merge(var.labels, {
    migration_batch = var.migration_batch
  source_vm = var.source_vm_name })
}