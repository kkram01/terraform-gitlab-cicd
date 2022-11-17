output "snapshot_ids" {
  value = tomap({
    for k, snapshot in google_compute_snapshot.source-snapshots : k => { "name" : snapshot.name, "is_boot" : snapshot.labels.is_boot }
  })
}