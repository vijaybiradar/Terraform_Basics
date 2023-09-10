# Terraform Configuration with Create Before Destroy Attribute Example

This Terraform configuration defines a local file resource and sets the `create_before_destroy` attribute to ensure that a new resource is created before the old one is destroyed during updates.

## Files

- `main.tf`: Contains the main Terraform configuration.

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
These details indicate that the .terraform.lock.hcl file is present in the project directory after running terraform init. Additionally, the .terraform directory contains a subdirectory named providers, which is created during initialization to store provider-related information.

You can use the following command to check the project directory for the presence of the .terraform.lock.hcl file and the providers subdirectory:

```
ls -ltrha
```
When you run this command, it will display a list of files and directories in the current directory, including hidden files. If Terraform has been initialized in the directory, you should see the .terraform.lock.hcl file and the .terraform directory, which contains the providers subdirectory.

Step 3: Plan the Changes
Generate and review an execution plan for your infrastructure changes.

```
terraform plan
```
Step 4: Apply the Changes
Apply the changes to your infrastructure.

```
terraform apply
```
Step 5: Show State Details
View detailed information about your infrastructure state.

```
terraform show
```
Step 6: Create Before Destroy
In this Terraform configuration, the main.tf file includes a local file resource with the create_before_destroy attribute set to true. This ensures that a new resource is created before the old one is destroyed during updates. Below is an example of the resource block:
```
resource "local_file" "hello" {
  filename        = "Hello.txt"
  content         = "Hello Vijay Biradar"
  file_permission = "0700"
  
  lifecycle {
    create_before_destroy = true
  }
}
```
By setting create_before_destroy to true, Terraform guarantees that a new "Hello.txt" file is created with the updated content and permissions before the old one is destroyed.
