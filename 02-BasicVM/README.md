# First steps

> An Azure Resource Group.
> A VNet(private address space in specific azure region).
> A Virtual Machine.
 * VM Storage(Disk-OS Data)
 * Network Interface-NIC (which give us a private and public IP address)
 * Wih NIC we will have *Network Security Group*-(NSG) to allow SSH access to our  VM.
 * Public IP address attached to NIC

## Finding images
```
az vm image list -p "Canonical"
az vm image list -p "Microsoft"
```

This folder contains 4 Files:
> main.tf : we defined provider(azurerm).This will provide us azure plugin to interact with azure resources. 
> vars.tf : for storing variables
> network.tf
> instance.tf 

# Note: For overridding variables in var.tf we can use terraform.tfvars
#ssh-source-address =""
curl ifconfig.co
my ip adrress

# Create SSH Certificates:
On Windows -use puttygen
puutygen -> generate -> public key(use on virtual machine) ->Save publickey -> put in Documents(mykey.pub)
                     -> private key (login to that VM) -> Save private -> put in Documents mykey(.ppk)

Conversions->Export OpenSSHHKey ->mykey.pem(used in Mac or Linux).

# Connection with VM 
SSH -> Auth -> load Private key file for the authentication 

# Terraform Commands:
> terraform init (download plugins)
> terraform plan
> terraform apply 
