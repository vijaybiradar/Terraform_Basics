## Create a directory name terraform and get inside it
mkdir terraform && cd terraform
## Create main.tf under terraform directory
vi main.tf

resource "random_pet" "my-list" {
 prefix  = var.prefix[0]
}

#Print the first elment of list..

output "name"{
 value = var.prefix[0]
}

output "my-name"{
 value = random_pet.my-list.prefix
}
## Format the code
terraform fmt
## List files (Terraform stores the workspace states in a directory called terraform.tfstate.d)
ls -ltrh #terraform created a new directory terraform.tfstate.d
ls terraform.tfstate.d/ #terraform created a new directory test inside terraform.tfstate.d
 
## Initialize the provider
terraform init
## List files (Terraform stores the workspace states in a directory called terraform.tfstate.d)
ls -ltrh #terraform created a new directory terraform.tfstate.d
ls terraform.tfstate.d/ #terraform created a new directory test inside terraform.tfstate.d
 
## Plan the changes
terraform plan
 
## Apply the changes
terraform apply
 
## Show state details
terraform show
 
## Cleanup
## Destory resources
terraform destory
