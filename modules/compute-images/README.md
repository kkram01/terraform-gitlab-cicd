# Image Creation #

This submodule allows you to create a `google_compute_image`
resource, from a source_disk, which is used as source to create disks. This module supports creation of images in two methods
1. From pre-existing snapshots. See the [images-only](../../examples/images/image-from-existing-snapshot) for a usage example.
2. From new snapshots to be created and passed to the images module. See the [images-and-snapshots](../../examples/images/snapshots-and-images-creation) for a usage example.


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| snapshot\_ids | The list of source snapshots for image creation  | list&nbsp;| `[]` | yes |
| project\_id | The project Id in which the images are to be created and snapshots located | string | `null` | yes |
| source\_vm\_name | The instance name for the source boot disk. This will label the snapshot resources created with source_vm : | `string` | `"true"` | yes |
| labels | Any additional labels to be attached to the created images | `map` | `{}` | no |
| migration\_batch | The migration batch name. This will be applied as label to all the resourced created | `string` | `null` | yes |


## Outputs

| Name | Description | Sample Output |
|------|-------------|:--------|
| img_data | A map of the snapshot data created |<code>{ <br>"test-machine-03-disk"= { <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"archive_size_bytes" = 2458243328<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"creation_timestamp" = "2022-08-25T03:53:38.970-07:00" <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"description" = "Automated image is taken from disk test-machine-03-disk" <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"disk_size_gb" = 20 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"family" = "" <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"guest_os_features" = toset([ { "type" = "GVNIC" }, { "type" = "UEFI_COMPATIBLE" },])<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "id" = "projects/sample-gcp-project/global/images/test-machine-03-disk-25-08-2022t-10-52-img" <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"label_fingerprint" = "sMzFQn67U_Q=" <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"labels" = tomap({ "is_boot" = "true" "migration_batch" = "batch_08" "source_vm" = "ansible-test-machine-01" }) <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"licenses" = tolist([ "https://www.googleapis.com/compute/v1/projects/rhel-cloud/global/licenses/rhel-7-server", ]) <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"name" = "test-machine-03-disk-25-08-2022t-10-52-img" <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"project" = "sample-gcp-project" <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"raw_disk" = tolist([]) <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"self_link" = "https://www.googleapis.com/compute/v1/projects/sample-gcp-project/global/images/test-machine-03-disk-25-08-2022t-10-52-img" <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"source_disk" = "" <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"source_image" = ""<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"source_snapshot" = "https://www.googleapis.com/compute/v1/projects/sample-gcp-project/global/snapshots/test-machine-03-disk-25-08-2022t-10-52" <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"timeouts" = null /* object */ <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} <br>&nbsp;}</code>|
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->