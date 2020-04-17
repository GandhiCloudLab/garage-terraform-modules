variable "resource_group_name" {
  type        = string
  description = "Existing resource group where the IKS cluster will be provisioned."
}

variable "resource_location" {
  type        = string
  description = "Geographic location of the resource (e.g. us-south, us-east)"
}

variable "cluster_config_file_path" {
  type        = string
  description = "The path to the config file for the cluster"
}

variable "cluster_type" {
  type        = string
  description = "The type of cluster that should be created (openshift or ocp3 or ocp4 or kubernetes)"
}

variable "service_account_name" {
  type        = string
  description = "The service account that the logdna agent should run under"
  default     = "logdna-agent"
}

variable "name_prefix" {
  type        = string
  description = "The prefix name for the service. If not provided it will default to the resource group name"
  default     = ""
}

variable "plan" {
  type        = string
  description = "The type of plan the service instance should run under (lite, 7-day, 14-day, or 30-day)"
  default     = "7-day"
}

variable "namespace" {
  type        = string
  description = "The namespace where the agent should be deployed"
  default     = "ibm-observe"
}

variable "tags" {
  type        = list(string)
  description = "Tags that should be applied to the service"
  default     = []
}

variable "exists" {
  type        = bool
  description = "Flag indicating that logdna instance already exists"
  default     = false
}

variable "name" {
  type        = string
  description = "The name that should be used for the service, particularly when connecting to an existing service. If not provided then the name will be defaulted to {name prefix}-{service}"
  default     = ""
}
