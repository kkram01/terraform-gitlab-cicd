variable "project_id" {
  type        = string
  description = "The project ID in which the resources are to be created"
}

variable "source_vm_name" {
  type        = string
  description = "The VM instance identified as source for the Migration"
}

variable "snapshots_region" {
  type        = string
  description = "The region in which the snapshots are to be created"
}

variable "migration_batch" {
  type        = string
  description = "The migration batch number. For example, Batch_6"
}

variable "labels" {
  type        = map(any)
  default     = {}
  description = "The map of labels to be added on all the snapshots and disks"
}

variable "source_vm_zone" {
  type        = string
  description = "The zone in which the source VM is located"
}

variable "source_boot_disk_name" {
  type        = list(any)
  description = "The boot disk of the source VM. please provide as a list"
  default     = []
}

variable "source_add_disk_names" {
  type        = list(any)
  description = "The list of additional disks of the source VM"
  default     = []
}

variable "snapshot_timeouts" {
  type = map(any)
  default = {
    "create" : "1h",
    "update" : "1h",
    "delete" : "1h"
  }
}
