# Snapshot Creation #

This submodule allows you to create a `google_compute_snapshot`
resource, from a source_disk, which is used as the basis for creating an image.

## Usage

See the [snapshots](../../examples/snapshots/) for a usage example.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| source\_boot\_disk\_name | The name of the boot disk to be snapshotted | list=| `[]` | no |
| source\_add\_disk\_names | List of names of the additional disks to be snapshotted | list | `[]` | no |
| project\_id | The project Id in which the snapshots are to be created and disks located | string | `null` | yes |
| source\_vm\_zone | The Zone in which the source Vm and disks are located|  string  | `null` | yes |
| source\_vm\_name | The instance name for the source boot disk. This will label the snapshot resources created with source_vm : | `string` | `"true"` | yes |
| labels | Any additional labels to be attached to the created snapshots | `map` | `{}` | no |
| snapshots\_region | The region in which the snapshots are to be created | `string` | `null` | yes |
| timeouts | The timeouts for create, update and delete snapshots | `map` | `{ "create" : "1h", "update" : "1h", "delete" : "1h"}` | no |
| migration\_batch | The migration batch name. This will be applied as label to all the resourced created | `string` | `null` | yes |


## Outputs

| Name | Description | Sample Output |
|------|-------------|:--------:|
| snapshot_ids | A map of the snapshot data created | `{ "source_disk_1" = {is_boot = "true", name = "snapshot_name"},  "add_disk_1" = { is_boot = "false", name = "snapshot_name" }, "add_disk_2" = { is_boot = "false", name = "snapshot_name" }}`|

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->