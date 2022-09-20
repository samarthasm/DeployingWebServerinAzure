variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
  default = "Azuredevops"
}

variable "environment"{
  description = "The environment should be used for all resources in this example"
  default = "test"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default = "East US" 
}

variable "username"{
  default = "newuser"
}

variable "password"{
  default= "password1234"
}

variable "packerImageId"{
  default = "/subscriptions/d93660dd-b773-4ec3-a7fa-6dc7a9e575c1/resourceGroups/Azuredevops/providers/Microsoft.Compute/images/myPackerImage"
}

variable "vm_count"{
  default = "2"
}