# Setup

# Azure CLI
* Download and install the Azure CLI from https://docs.microsoft.com/en-us/cli/azure/install-azure-cli
Open Powershell and Run as Admin:
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi

# Or use Docker command for running Azure cli 
# Run Azure CLI
docker run -it --rm -v ${PWD}:/work -w /work --entrypoint /bin/sh mcr.microsoft.com/azure-cli:2.6.0

# Sign in
```
az login
```
