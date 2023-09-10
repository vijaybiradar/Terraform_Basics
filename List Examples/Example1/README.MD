# Terraform Configuration with list(string) Example

This Terraform configuration creates random names based on a list of prefixes and outputs the generated names. 

## Files

- `main.tf`: Contains the main Terraform configuration.
- `variable.tf`: Defines the input variables, including a list of prefixes.

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

you can use the following command to check the project directory for the presence of the .terraform.lock.hcl file and the providers subdirectory:

```
ls -ltrha
```
When you run this command, it will display a list of files and directories in the current directory, including hidden files. If Terraform has been initialized in the directory, you should see the .terraform.lock.hcl file and the .terraform directory, which contains the providers subdirectory.
Step 3: Plan the Changes
Generate and review an execution plan for your infrastructure changes.

```
terraform plan
```
Sample Output:

```
...

Plan: 3 to add, 0 to change, 0 to destroy.
```
Step 4: Apply the Changes
Apply the changes to your infrastructure.

```
terraform apply
```
Sample Output:

```
...

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
```
Step 5: Show State Details

Terraform State
Terraform maintains state information in a file called terraform.tfstate. This file keeps track of the current state of your infrastructure. It's important to manage this state file properly, especially in a team environment or for long-term projects.

Viewing State
Display detailed information about your infrastructure state.

```
terraform show
```
Sample Output:


```
...

names = [  "Vijayabc",  "Kumardef",  "Biradarghi"]
```
Step 6: Cleanup
Destroy Resources
To clean up and destroy the created resources, use the terraform destroy command.

```
terraform destroy
```
Sample Output:

```
...

Destroy complete! Resources: 3 destroyed.
```

Remember to confirm the destruction when prompted.

Variables
prefix: A list of strings that serves as prefixes for generating random names. By default, it contains ["Vijay", "Kumar", "Biradar"].
You can customize the list of prefixes by editing the variable.tf file.
