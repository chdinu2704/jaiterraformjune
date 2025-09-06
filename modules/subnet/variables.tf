variable "sub01_name" {
	type = string
	description = "subnet name"
}

variable "sub01_cidr" {
	type = list(string)
	description = "subnet cidr address space"
}


variable "sub02_name" {
	type = string
	description = "subnet name"
}

variable "sub02_cidr" {
	type = list(string)
	description = "subnet cidr address space"
}

variable "vnet_name" {
	type = string
	description = "virtual network name"
}
	
	
variable "rg_name" {
	type = string
	description = "resource group name"
}	

	
variable "location" {
	type = string
	description = "resource group location"
}	
	