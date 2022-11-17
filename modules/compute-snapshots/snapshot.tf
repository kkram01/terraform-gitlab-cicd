resource "google_compute_snapshot" "source-snapshots" {
  for_each          = local.source_disk_list
  name              = format("%s-%s", each.key, local.snapshot_suffix)
  source_disk       = each.key
  zone              = var.source_vm_zone
  storage_locations = [var.snapshots_region]
  labels = merge(local.labels,
    { is_boot = each.key == var.source_boot_disk_name[0] ? true : false
  })
  timeouts {
    create = var.snapshot_timeouts.create
    update = var.snapshot_timeouts.update
    delete = var.snapshot_timeouts.delete
  }
}
