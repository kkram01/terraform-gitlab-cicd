resource "google_compute_image" "source_img" {
  for_each        = var.snapshot_ids
  name            = format("%s-img", each.value.name)
  description     = format("Automated image is taken from disk %s", each.key)
  source_snapshot = format("projects/%s/global/snapshots/%s", var.project_id, each.value.name)
  labels          = merge(local.labels, { is_boot = each.value.is_boot })
}
