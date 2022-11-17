variable "project_id" {
  type        = string
  description = "The project ID in which the resources are to be created"
}

variable "source_vm_name" {
  type        = string
  description = "The VM instance identified as source for the Migration"
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


variable "snapshot_ids" {
  type        = map(any)
  description = "The snapshot map"
}



