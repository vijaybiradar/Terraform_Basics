# Terraform Configuration with Prevent Destroy Attribute Example

This Terraform configuration defines a local file resource and sets the `prevent_destroy` attribute to protect the resource from accidental destruction.

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
Step 6: Cleanup - Prevent Resource Destruction
In this Terraform configuration, the main.tf file includes a local file resource with the prevent_destroy attribute set to true. This prevents the destruction of the specified resource. Below is an example of the resource block:

```
resource "local_file" "hello" {
  filename        = "Hello.txt"
  content         = "Hello Vijay Biradar"
  file_permission = "0700"
  
  lifecycle {
    prevent_destroy = true
  }
}
```
By setting prevent_destroy to true, Terraform ensures that the resource, in this case, the "Hello.txt" file, cannot be destroyed unintentionally.
