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

Create and deploy the packer image:
In order to do this, we will use packer, which is a server templating software that is used to create and deploy virtual machine images. The sequence of steps for the same are as follows:

a. Get the subscription id, client id and client secret from the service principal details of your azure account.
b. Ensure to export the environment variables by inputting the above details:
    export ARM_CLIENT_ID=<your client-id>
    export ARM_CLIENT_SECRET=<your client-secret>
    export ARM_SUBSCRIPTION_ID=<your subscription id>
c. Create a tagging policy and assign it to the <your subscriptions name>/<resource group name>.
d. Create the packer template and deploy the packer image.
e. Create the terraform template and deploy the infrastucture using the packer image. If you are looking to use an existing reource group (already created for our PackerImage), so we can't deploy the resource group with the same name. Instead, after "terraform init" command, we need to first import the existing resource group and then it will know which resource group to deploy. The similar command will be like:
   terraform import azurerm_resource_group.main /subscriptions/{subsriptionId}/resourceGroups/{resourceGroupName}
   Then, you can follow it up with "terraform plan -out solution.plan" and "terraform apply" commands.
f. Once you have deployed the infrastructure, you can check the resources on azure portal and then destroy them.


### Output

1. Attempt to create a vm failing correctly due to the created tag-policy:
<img width="960" alt="create vm failed due to tag policy snip" src="https://user-images.githubusercontent.com/4275543/191344195-352bd47b-3aae-48be-b3e3-a664b95abf76.PNG">
2. Packer image snip:
<img width="960" alt="packer image snip" src="https://user-images.githubusercontent.com/4275543/191344392-43b9df35-676b-4abd-973b-d9bd346a70cb.PNG">
3. After terraform apply, you will be able to see the resources as follows:
<img width="956" alt="Terraform Appy Snip" src="https://user-images.githubusercontent.com/4275543/191344933-93df1151-d4ff-4791-a8b2-51586923fa16.PNG">
