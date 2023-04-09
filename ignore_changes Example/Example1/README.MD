# ignore_changes with a Terraform local file module

This Terraform module creates a local file with the specified content and file permission and ignore_changes Parameter.


## Usage

# How to use this Terraform code

1. Navigate to the directory containing these files in your terminal.
2. Run `terraform init` to initialize the backend and install required plugins.
3. Run `terraform apply -var 'filename=Hello.txt' -var 'content=Hello, world!' -var 'file_permission=0700'` to create the local file.
4. When prompted, type `yes` to confirm the creation of the resource.
5. Run `terraform output` to view the output values.
6. To destroy the local file resource, run `terraform destroy`.



## Inputs

- `filename`: The name of the local file. Defaults to "Hello.txt".
- `content`: The content to write to the local file. Defaults to "Hello, world!".
- `file_permission`: The file permission to set for the local file. Defaults to "0700".

## Outputs

- `filename`: The name of the local file.
- `content`: The content of the local file.
- `file_permission`: The file permission of the local file.
