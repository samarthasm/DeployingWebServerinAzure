# Azure Infrastructure Operations Project: Deploying a scalable IaaS web server in Azure

### Introduction
For this project, you will write a Packer template and a Terraform template to deploy a customizable, scalable web server in Azure.

### Getting Started
1. Clone this repository
2. Create your infrastructure as code, create a tagging policy in Azure.
3. Update this README to reflect how someone would use your code.

### Dependencies
1. Create an Azure Account
2. Install the Azure command line interface
3. Install Packer
4. Install Terraform

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
    export ARM_TENANT_ID=<your tenant id>
    
c. Create a tagging policy and assign it to the <your subscriptions name>/<resource group name>.

d. Create the packer template and deploy the packer image.

e. Create the terraform template and deploy the infrastucture using the packer image. If you are looking to use an existing reource group (already created for our PackerImage), so we can't deploy the resource group with the same name. 

   Instead, after "terraform init" command, you need to:
   
   i. Either import the existing resource group and then it will know which resource group to deploy. The command will be like:
    
    ```    
    terraform import azurerm_resource_group.main /subscriptions/{subsriptionId}/resourceGroups/{resourceGroupName}
    ```   
    
   ii. Or make changes in the terraform (main.tf) so that no new resources are created and existing one is considered instead.
        
   Then, you can follow it up with "terraform plan -out solution.plan" and "terraform apply" commands.
   
f. Once you have deployed the infrastructure, you can check the resources on azure portal and then destroy them.

### Output

1. Tag-policy creation and assignment:
<img width="960" alt="TagPolicyAssignmentSnip" src="https://user-images.githubusercontent.com/4275543/191486054-cda17acc-15da-403c-8204-3e34d71ba579.PNG">

2. Attempt to create a vm failing correctly due to the created tag-policy:
<img width="960" alt="VMCreateErrorForTagPolicySnip" src="https://user-images.githubusercontent.com/4275543/191486188-5d2de588-0e61-4ba9-9b9f-6e8b24c75e31.PNG">

3. Packer Image: 
 <img width="960" alt="PackerImageSnip" src="https://user-images.githubusercontent.com/4275543/191486336-1b1d8f2e-1c43-4d24-81e2-ada4e460ef49.PNG">
  
4. After terraform apply, you will be able to see the confirmation on cloud shell:
<img width="960" alt="TerraformApplyComplete" src="https://user-images.githubusercontent.com/4275543/191519817-02835d5f-6629-48b2-a8f7-8ebb3b50b917.PNG">

5. You will be able to see the resources created on the portal:
<img width="960" alt="ResourcesInAzureAfterTerraformApply" src="https://user-images.githubusercontent.com/4275543/191520003-446383b8-d5d9-4711-bfbd-06849e70da56.PNG">
