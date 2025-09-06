module "rg" {

	source 				= "./modules/rgroup"
	name   				= "${var.project}-${var.env}-rg-01"
	location			= var.location

}


module "storage" {

	source 				= "./modules/storage"
	name				= "${var.project}${var.env}jaist01"
	rg_name				= module.rg.name
	location			= var.location
	account_tier		= var.account_tier
	replica_type		= var.replica_type
	account_kind		= var.account_kind
	env					= var.env
	project				= var.project
	con_name			= "${var.project}${var.env}jaicon"
	blob_name			= "${var.project}${var.env}jaiblob"
	
	
	depends_on = [
	  
	  module.rg
	
	]


}

module "vnet" {

	source 				= "./modules/vnet"
	name				= "${var.project}-${var.env}-vnet-01"
	vnet_cidr			= var.vnet_cidr
	rg_name				= module.rg.name
	location			= var.location
	project				= var.project
	env					= var.env

	depends_on = [
	  
	  module.rg
	
	]

}

module "subnet" {

	source 				= "./modules/subnet"
	sub01_name			= "${var.project}-${var.env}-sub-01"
	sub01_cidr			= var.sub01_cidr
	sub02_name			= "${var.project}-${var.env}-sub-02"
	sub02_cidr			= var.sub02_cidr
	vnet_name			= module.vnet.name
	rg_name				= module.rg.name
	location			= var.location
	
	
	depends_on = [
	  
	  module.rg,
	  module.vnet
	
	]


}


module "vm" {

	source 				= "./modules/vmachine"
	rg_name				= module.rg.name
	location			= var.location
	sub_id				= module.subnet.sub01_id
	vm01_name			= "${var.project}-${var.env}-vm-01"
	nic01_name			= "${var.project}-${var.env}-nic-01"
	
	
	depends_on = [
	  
	  module.rg,
	  module.vnet,
	  module.subnet
	
	]


}