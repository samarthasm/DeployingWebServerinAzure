# Azure Infrastructure Operations Project: Deploying a scalable IaaS web server in Azure

### Introduction
In this project, you will write a Packer template and a Terraform template to deploy a customizable, scalable web server in Azure.

### Getting Started
1. Clone this repository

2. Create your infrastructure as code, create a tagging policy in Azure.

3. Update this README to reflect how someone would use your code.

### Dependencies
1. Create an [Azure Account](https://portal.azure.com) 
2. Install the [Azure command line interface](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
3. Install [Packer](https://www.packer.io/downloads)
4. Install [Terraform](https://www.terraform.io/downloads.html)

### Instructions
After the dependencies are set, you will:

1. Create and deploy the packer image
2. Create and deploy the infrastructure with a terraform template

>>Create and deploy the packer image:
In order to do this, we will use packer, which is a server templating software that is used to create and deploy virtual machine images. The sequence of steps for the same are as follows:

a. Get the subscription id, client id and client secret from the service principal details of your azure account.
b. Ensure to export the environment variables by inputting the above details:
export ARM_CLIENT_ID=<your client-id>
export ARM_CLIENT_SECRET=<your client-secret>
export ARM_SUBSCRIPTION_ID=<your subscription id>


### Output


