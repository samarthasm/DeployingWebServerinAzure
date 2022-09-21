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
  default = "odl_user_208142"
}

variable "password"{
  default= "cisy58BWG*A2"
}

variable "packerImageId"{
  default = "/subscriptions/ad6befd3-6a77-4714-b24d-181b38cb2753/resourceGroups/Azuredevops/providers/Microsoft.Compute/images/myPackerImage"
}

variable "instance_count"{
  description = "The instance count that should be used in this example (any value in the range 2 to 5)"
  default = "2"
}