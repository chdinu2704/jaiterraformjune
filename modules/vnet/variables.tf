variable "name" {
	type = string
	description = "virtual Network name"
}

variable "rg_name" {
	type = string
	description = "Resource group name"
}

variable "location" {
	type = string
	description = "Resource group location"
}

variable "env" {
	type = string
	description = "environment name"
}

variable "project" {
	type = string
	description = "Project name"
}

variable "vnet_cidr" {
	type = list(string)
	description = "vnet cidr address space"
}



	