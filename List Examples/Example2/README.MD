
# Terraform Configuration with list(string) Example

This Terraform configuration generates random pet names based on a list of prefixes and outputs the generated pet name along with the selected prefix.

## Files

- `main.tf`: Contains the main Terraform configuration.
- `variable.tf`: Defines the input variable `prefix`.

## Usage

### Step 1: Format the Code

Format your Terraform configuration files for consistent styling.

```
terraform fmt
```
Step 2: Initialize the Provider
Initialize Terraform and download the required provider plugins.

```
terraform init
```
Step 3: Plan the Changes
Generate and review an execution plan for your infrastructure changes.

```
terraform plan
```
Sample Output:

```
...

Plan: 1 to add, 0 to change, 0 to destroy.
```
Step 4: Apply the Changes
Apply the changes to your infrastructure.

```
terraform apply
```
Sample Output:

```
...

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```
Step 5: Show State Details
Display detailed information about your infrastructure state.

```
terraform show
```
Sample Output:

```
...

prefix = "MONKEY"
my_name = "monkey"
```
Terraform State
Terraform maintains state information in a file called terraform.tfstate. This file keeps track of the current state of your infrastructure. It's important to manage this state file properly, especially in a team environment or for long-term projects.

Viewing State
You can view the current state of your infrastructure using the following command:

```
terraform show
```
Backup and Versioning
Always back up your terraform.tfstate file and consider using version control systems like Git to track changes to your Terraform configurations. Do not manually edit the state file.

Remote State Storage
For collaboration and safety, consider storing your Terraform state remotely using services like AWS S3, Azure Blob Storage, or HashiCorp's Terraform Cloud. This prevents conflicts and ensures secure state management.

Step 6: Cleanup
Destroy Resources
To clean up and destroy the created resources, use the terraform destroy command.

```
terraform destroy
```
Sample Output:

```
...

Destroy complete! Resources: 1 destroyed.
```
Remember to confirm the destruction when prompted.

Variables
prefix: A list of strings that serves as prefixes for generating random pet names. By default, it contains ["CAT", "DOG", "MONKEY", "SQUIRREL", "ELEPHANT"].
You can customize the list of prefixes by editing the variable.tf file.
