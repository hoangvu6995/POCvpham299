# Configure the Microsoft Azure Provider.
provider "azurerm" {
  version = "~>2.24"
  subscription_id = "692b72ea-5f38-4839-8130-f3907ed50699"
  client_id       = "e69a8325-0fae-48c9-8873-3626737444cb"
  client_secret   = "c-4vELvy7YsR8asVLDwP.Uu29fOUN~dzTx"
  tenant_id       = "93f33571-550f-43cf-b09f-cd331338d086"

  features {}
}

module "rg" {
  source         = "./rg"
  rg_name        = "rg-integpj-australiacentral"
  location		 = "australiacentral"
  tags = {
        ApplicationName = "Web App"
		Owner= "anguyen97@dxc.com"
		Approver= "anguyen97@dxc.com"
		BusinessUnit= " "
		Env= "DEV, PROD"
		EndDate= " "
		ServiceClass= "Silver"
		ClientName= " "
  }
}

module "vnet" {
  source         = "./vnet"
  vnet_name 	 = "vnet-integ-${module.rg.location}"
  vnet_cidr		 = "100.100.0.0/16"
  location		 = "${module.rg.location}"
  rg_name 		 = "${module.rg.rg_name}"
  tags 			 = "${module.rg.tags}"
}

module "subnets" {
  source         = "./subnets"
  subnet_IngressSubnetCIDR1 = "snet-ingress-${module.rg.location}-001"
  subnet_IngressSubnetCIDR2 = "snet-ingress-${module.rg.location}-002"
  subnet_EgressSubnetCIDR1 = "snet-egress-${module.rg.location}-001"
  subnet_EgressSubnetCIDR2 = "snet-egress-${module.rg.location}-002"
  subnet_ProdWebTierSubnetCIDR1 = "snet-webapp-prod-${module.rg.location}-001"
  subnet_ProdWebTierSubnetCIDR2 = "snet-webapp-prod-${module.rg.location}-002"
  subnet_UATWebTierSubnetCIDR1 = "snet-webapp-uat-${module.rg.location}-001"
  subnet_UATWebTierSubnetCIDR2 = "snet-webapp-uat-${module.rg.location}-002"
  subnet_PRODKubeSubnetCIDR = "snet-kubernetes-prod-${module.rg.location}"
  subnet_DEVKubeSubnetCIDR = "snet-kubernetes-dev-${module.rg.location}"
  subnet_jenkinSubnetCIDR = "snet-jenkin-${module.rg.location}"
  rg_name 		 = "${module.rg.rg_name}"
  vnet_name 	 = "${module.vnet.vnet_name}"
  vnet_cidr 	 = "${module.vnet.vnet_cidr}"
}
