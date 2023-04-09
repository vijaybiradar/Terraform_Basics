# Terraform Local File Example
This Terraform module creates local files from a list of file contents. It uses the local_file resource to create one file for each item in the file_contents variable.

# Requirements
Terraform 0.12 or later

# Usage
Clone the repository:


git clone https://github.com/vijaybiradar/Terraform_Test.git
Change into the cloned directory:


cd terraform-local-file-example
# Initialize the Terraform working directory:


terraform init
Customize the module configuration in variables.tf as needed.

# Apply the Terraform configuration:


terraform apply
This will create one file for each item in the file_contents list. By default, the file names will be file_one.txt, file_two.txt, and file_three.txt, but you can customize this by editing the file_names variable in main.tf.

# To view the absolute paths of the created files, run the following command:


terraform output file_locations
This will output a map of file names to their absolute paths.

# To destroy the created resources, run:


terraform destroy
Inputs
The following input variables are supported:

file_contents: (Required) A list of strings representing the contents of each file.

file_names: (Optional) A list of strings representing the file names. Defaults to ["file_one.txt", "file_two.txt", "file_three.txt"].

# Outputs
The following output variables are supported:

file_locations: A map of file names to their absolute paths.
# Resources
This module creates the following resources:

local_file: Creates a local file from the contents of the file_contents variable. One file is created for each item in the list.
