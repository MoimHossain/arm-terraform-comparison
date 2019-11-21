variable "resource_group_name" {
  description = "Name of the resource group where the resources will be deployed"
  type        = "string"
}

variable "location" {
  description = "Azure region where resources will be located"
  type        = "string"
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = "string"
  default     = ""
}

variable "storage_account_tier" {
  description = "Tier to use for this storage account. Valid values are : 'Standard' and 'Premium'."
  default     = "Standard"
}

variable "registry_name" {
  description = "Name of the container registry."
  type        = "string"
  default     = ""
}

variable "jenkins_vm_dns_prefix" {
  description = "Label for the DNS Name. Will be used to make up the FQDN of the Jenkins VM public IP."
  type        = "string"
}

variable "vm_size" {
  description = "Size of the virtual machine"
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  description = "Name of the local administrator account"
  type        = "string"
}

variable "admin_password" {
  description = "Password for the local administrator account"
  type        = "string"
}

variable "git_repository" {
  description = "URL to a public git repository that includes a Dockerfile"
  type        = "string"
  default     = "https://github.com/azure-devops/spin-kub-demo.git"
}

variable "service_principal_id" {
  description = "Service Principal ID used by Jenkins to access Azure resources (for example, the container registry)"
  type        = "string"
}

variable "service_principal_secret" {
  description = "Service Principal secret used by Jenkins to access Azure resources (for example, the container registry)"
  type        = "string"
}
