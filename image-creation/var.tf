variable "source_boot_disk_name" {
  type        = list(string)
  description = "The Source boot disk. Provide as a list."
}

variable "source_add_disk_names" {
  type        = list(string)
  default     = []
  description = "The list of source additional disks"
}

variable "project_id" {
  type        = string
  description = "The project in which the resources are to be created"
}

variable "source_vm_zone" {
  type        = string
  description = "The Zone in which the Source VM and the boot, additional disks are located"
}

variable "source_vm_name" {
  type        = string
  description = "Name of the source VM identified"
}

variable "migration_batch" {
  type        = string
  description = "The Migration batch number. Will be added as a label to all created resources."
}

variable "labels" {
  type        = map(any)
  description = "The default map of variables to be added to all the created resources"
}

variable "snapshots_region" {
  type        = string
  description = "The GCS bucket region in which snapshots are to be stored"
}

variable "snapshot_ids" {
  type        = map(any)
  default     = {}
  description = "Input if the images are to be created from specified snapshot_ids. Format {'source_disk_name_1' = {'is_boot': 'true/false', 'name': 'snapshot_name_1'},'source_disk_name_2' = {'is_boot': 'true/false', 'name': 'snapshot_name_2'}}"
}


variable "snapshot_timeouts" {
  type = map(any)
  default = {
    "create" : "1h",
    "update" : "1h",
    "delete" : "1h"
  }
}