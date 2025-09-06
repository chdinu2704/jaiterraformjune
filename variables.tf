variable "project" {
	type = string
	description = "project name"
}

variable "location" {
	type = string
	description = "Resource group location"
}

variable "env" {
	type = string
	description = "project name"
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

variable "vnet_cidr" {
	type = list(string)
	description = "vnet cidr address space"
}

variable "sub01_cidr" {
	type = list(string)
	description = "vnet cidr address space"
}

variable "client_id" {
	type = string
	description = "App reg client id"
}

variable "subscription_id" {
	type = string
	description = "App reg subscription id"
}

variable "client_secret" {
	type = string
	description = "App reg client secret"
}

variable "tenant_id" {
	type = string
	description = "App reg tenant id"
}

variable "sub02_cidr" {
	type = list(string)
	description = "vnet cidr address space"
}
	
