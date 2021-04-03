# Use this only for execting locally or for tf-cloud local / remote  mode execution <br>

#Variables Required <br>
#--------------------- <br>
 # variable usage  (these variables are defined in terraform.tfvars (running locally or in TF Cloud local execution mode). You can change the values as you need  <br>
 resgrp         = var.resgrp   # resource group name <br>
 region         = var.region <br>
 resgrptag      = var.resgrptag <br>
 vnet           = var.vnet <br>
 cidr           = var.cidr # ["10.0.1.0/16"] <br>
 subnetname     = var.subnetname <br>
 subnet         = var.subnet # ["10.0.1.0/24"] <br>
 publicip       = var.publicip <br>
 sgname         = var.sgname <br>
 netIntName     = var.netIntName <br>
 ipName         = var.ipName <br>
 vmName         = var.vmName <br>
 osDiskName     = var.osDiskName <br>
 imagePublisher = var.imagePublisher # "Canonical" <br>
 image          = var.image          # "UbuntuServer" <br>
 imageSku       = var.imageSku       # "18.04-LTS" <br>
 adminUser      = var.adminUser      # "azureuser" <br>
 privKey        = var.privKey  <br>


# The Below environment variables need to be defined in Terraform Cloud if running this from Terraform Cloud (with local execution mode.  If running locally,define as local env variables.  This is the case if you are using client certificates for AZ Service Principal
export ARM_CLIENT_ID="" <br>
export ARM_CLIENT_SECRET="" <br>
export ARM_TENANT_ID="" <br>
export ARM_SUBSCRIPTION_ID="" <br>


#Required for Terraform if using Client Secrets: <br>
#---------------------------------------------------------------- <br>
	1) az login -u azusername@domain -p blah  (or just az login) <br>
	2) az account set -s acct_subscription_id<br>
	3) az ad sp create-for-rbac --name cloudAciBootcamp --role=Contributor <br>  # here the name of the Service Principal is cloudAciBootcamp
	
	{
	  "appId": "blah",
	  "displayName":"blah",
	  "name": "blah",
	  "password": "blah",
	  "tenant": "blah"
	}

if using Terraform Cloud, make sure to change the backend.tf contents to the TF Cloud workspace name.  Also make sure to put the credentials block in $HOME/.terraform.d/credentials.tfrc.json   file like below: <br>

root@workstation:~/.terraform.d# cat credentials.tfrc.json  <br>
{
  "credentials": {
    "app.terraform.io": {
      "token": "token_from_terraform_cloud"
    }
  }
}
