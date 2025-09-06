variable "name" {
	type = string
	description = "storage account name"
}

variable "rg_name" {
	type = string
	description = "storage account rg name"
}

variable "location" {
	type = string
	description = "stg location"
}

variable "account_tier" {
	type = string
	description = "stg account tier"
}

variable "replica_type" {
	type = string
	description = "stg replica type"
}

variable "account_kind" {
	type = string
	description = "stg account kind"
}

variable "env" {
	type = string
	description = "environment"
}

variable "project" {
	type = string
	description = "name of the project"
}

variable "con_name" {
	type = string
	description = "container name"
}

variable "blob_name" {
	type = string
	description = "blob storage name"
}

	