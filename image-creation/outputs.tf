output "snapshot_data" {
  value = module.compute_snapshot.snapshot_ids
}

output "img_data" {
  value = module.compute_image.img_data
}
