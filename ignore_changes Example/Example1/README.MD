# Terraform Local File Module

This Terraform module creates a local file with the specified content and file permission.

## Usage

To create the local file, run `terraform apply` and specify the filename, content, and file permission as variables:

terraform apply -var 'filename=Hello.txt' -var 'content=Hello, world!' -var 'file_permission=0700'

perl
Copy code

## Inputs

- `filename`: The name of the local file. Defaults to "Hello.txt".
- `content`: The content to write to the local file. Defaults to "Hello, world!".
- `file_permission`: The file permission to set for the local file. Defaults to "0700".

## Outputs

- `filename`: The name of the local file.
- `content`: The content of the local file.
- `file_permission`: The file permission of the local file.
