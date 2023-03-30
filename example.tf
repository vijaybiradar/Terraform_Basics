Types of TF variables:
input
output
local
Input Variables


Instead of using hardcoded values as values of attributes, it is better to use variables as this enables code reusability.

main.tf:

resource "local_file" "foo" {
    filename = "${path.cwd}/temp/foo.txt"
    content = "This is a text content of the file!"
}

resource "random_pet" "my_random_text" {
    length = 2
    prefix = "my_rnd_txt_"
    separator = "."
}

From main.tf we can extract hardcoded values into a new config file, which contains only variables:

variables.tf:

variable "filename" {
    default = "${path.cwd}/temp/foo.txt"
    type = string
    description = "File name and path"
}

variable "content" {
    default = "This is a text content of the file!"
    type = string
    description = "Text content of the file"  
}

variable "length" {
    default = 2
    type = number
    description = "Lenght of the random pet name"
}

variable "prefix" {
    default = "my_rnd_txt_"
    type = string
    description = "Prefix of the random pet name"  
}

variable "separator" {
    default = "."
    type = string
    description = "Separator used between words in the random pet name" 
}

In order to use these variables, we can refer to them in main.tf as var.<variable_name> e.g.

resource "local_file" "foo" {
    filename = var.filename
    content = var.content
}
 
variable is a reserved word.
 
default argument is optional and specifies the default value of the variable.
If default value is not specified, that variable initially has undefined value.
type and descripton are optional arguments.
 
type enforces the type of the variable. Can be: 
string 
number 
boolean (true/false)
any (default type assign to variable when type is not specified)
list e.g. ["car", "bicycle"]. It is a numbered collection as each element can be represented by its index in the list which begins at 0.  In this example, bicycle can be represented as var.my_list[1]. It can contain duplicate values.
set - similar to list but can't contain duplicate values
map e.g. car1 = Skoda, car2 = Citroen. Data is represented as key-value pairs. To use some particular value, we refer it via its key (we use key mathcing).
object - complex data structure that combines data types listed above
tuple - complex data structure, similar to a list as consist of the sequence of elements but elements here can be of different type (while in list they must be of the same type)
list example:

variable "vehicle_types" {
    default = ["car", "bicycle"]
    type = list
}

variable "my_vehicle" {
    default = var.vehicle_types[1]
}
 
It is possible to enforce the type of list elements:
 
variable "vehicle_types" {
    default = ["car", "bicycle"]
    type = list(string)
}

variable "vehicle_ids" {
    default = [1001, 1002, 2003]
    type = list(number)
}

 
map example:

variable "my_dictionary" {
    default = {
        "Hello!" = "Zdravo!"
        "How are you?" = "Kako si?"
    }
    type = map
}

variable "my_greeting_in_serbian" {
    default = var.my_dictionary["Hello!"]
    type = string
}

keys must be quoted if they contain non-alphanumeric characters.

It is possible to enforce the type of values in key-value pairs (keys are always strings):
 
variable "car_ids" {
    default = {
        "Skoda" =1001
        "Citroen" = 1002
    }
    type = map(number)
}

set example:

variable "vehicle_types" {
    default = ["car", "bicycle"]
    type = set(string)
}


object example:

variable "car" {
    type = object({
        name = string
        colour = string
        age = number
        previous_owners = list(string)
        taxed = boolean
    }) 
 
    default = {
        name = "Skoda"
        colour = "red"
        age = "18"
        previous_owners = ["Amelia", "Bryan"]
        taxed = true  
    }
} 
 
tuple example:

variable "car" {
    type = tuple([string, string, number, list(string), boolean]) 
 
    default =[
        "Skoda",
        "red",
        "18",
        ["Amelia", "Bryan"],
        true  
    ]
}
 

As default attribute is optional, we can declare a variable like this:

variable "foo" {
}

terraform apply will then ask us to manually enter the value of this variable in an interactive mode.

We can also specify variable value via CLA:

$ terraform apply -var "foo=this is foo" -var "bar=Hello, bar!"

Another way to specify variables is via environment variables. To make them available only for current command:

$ TF_VAR_foo="this is foo" TF_VAR_bar="Hello, bar!" terraform apply

...or, to make them available for all future commands in the current terminal session:

$ export  TF_VAR_foo="this is foo" TF_VAR_bar="Hello, bar!"; terraform apply

Finally, we can use variable definition files for specifying variables. They contain only variable name assignments.

terraform.tfvars file content can be e.g.:

foo="this is foo"
bar="Hello, bar!" 

They need to have file extension .tfvars of .tfvars.json or *.auto.tfvars or *.auto.tfvars.json in order to be loaded automatically. Variable definition files with arbitrary names can be passed to terraform apply command by using -var-file argument:

$ terraform apply -var-file="my_variables.tfvars"

If same variable is set via all these routes, which one has precedence?

1. -var or -var-file (CLA)
2. *.auto.tfvars (in alphabetical order)
3. terraform.tfvars
4. Environment variables


Output Variables

They store a value of an expression. For example, creation of random_pet resource outputs its id. So far we could check its value in the output of terraform apply or terraform show commands. If we want to save it we can assign its value to the output variable:

resource "random_pet" "my_random_text" {
    length = 2
    prefix = "my_rnd_txt_"
    separator = "."
}
 
output my_random_text_id {
    value = random_pet.my_random_text.id
    description = "Value of the id attribute of the provisioned random_pet resource"
}

value is mandatory and description is optional attribute.

Output variable name and its value will be printed in the terraform apply output. To check only output variables, we can use terraform output command. 

If we specify the name of the output variable as terraform output variable_name, only the value of this variable will be printed. 

To use outputs from the creation of one resource as attributes used for configuring another resource we can use resource attribute references. Output variables are useful if we want quickly to display output attributes or pass them to other IaC tools like Ansible or shell scripts.
