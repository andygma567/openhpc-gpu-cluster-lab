# TODO: Define shared input variables for hybrid Slurm test environments.
variable "environment_name" {
  description = "Logical environment name for the OpenHPC Slurm testbed."
  type        = string
  default     = "lab"
}
