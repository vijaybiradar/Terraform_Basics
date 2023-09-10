This Terraform configuration generates random pet names using the random_pet resource based on age values. It outputs both the age variable and the generated pet name prefix.

Prerequisites
Before you begin, ensure you have the following installed:

Terraform
Files
main.tf: Contains the main Terraform configuration.
variable.tf: Defines the input variable, which is a list of ages.
Usage
This guide will walk you through using this Terraform configuration to generate random pet names based on age values and customize the age list.

Step 1: Format the Code
Before applying the configuration, it's a good practice to format your Terraform configuration files for consistent styling:

```
terraform fmt
```
This step ensures that your code follows a consistent style and is easier to read and maintain.

Step 2: Initialize the Provider
To begin using Terraform for this project, you need to initialize Terraform and download the required provider plugins:

```
terraform init
```
Terraform will fetch the necessary plugins specified in your configuration and prepare your working directory.

Step 3: Plan the Changes
Before making any changes to your infrastructure, it's advisable to generate and review an execution plan to understand what Terraform will do:
```
terraform plan
```
The plan will display the actions Terraform will take, including creating or modifying resources. This step allows you to verify the changes before applying them.

Sample Output:

```
...

Plan: 1 to add, 0 to change, 0 to destroy.
```
Step 4: Apply the Changes
Once you've reviewed the plan and are satisfied with the changes, you can apply them to your infrastructure:

```
terraform apply
```
Terraform will execute the plan, creating or modifying resources as necessary. After completion, you'll see a summary of the changes applied.

Sample Output:

```
...

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```
Step 5: View State Details
Terraform State
Terraform maintains state information in a file called terraform.tfstate. This file keeps track of the current state of your infrastructure. It's important to manage this state file properly, especially in a team environment or for long-term projects.

Viewing State
To view detailed information about your infrastructure's current state, use the following command:

```
terraform show
```
Sample Output:

```
...

age = "22"
my_name = "22"
```
This output provides insights into the age variable and the generated pet name prefix.

Step 6: Cleanup
Destroy Resources
When you're done with your infrastructure, you can clean up and destroy the created resources:

```
terraform destroy
```
Terraform will prompt you to confirm the destruction of resources. Confirm with a "yes" response.

Sample Output:

```
...

Destroy complete! Resources: 1 destroyed.
```
Customization
You can customize the behavior of this Terraform configuration by editing the following file:

variable.tf: Define your own list of ages in the age variable.
```
# variable.tf
# Define the age variable as a list of strings with a default value.
variable "age" {
  type    = list(string)
  default = ["20", "21", "22"]
}
```
Feel free to modify the list of ages to suit your requirements.
