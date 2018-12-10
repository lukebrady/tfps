# TFPS (Terraform PowerShell)
PowerShell module for Terraform.

### Usage
First import the TFPS module:
```powershell
Import-Module .\tfps
```

Now create the Terraform environment:
```powershell
New-TFEnvironment
```
This will expand the terraform.zip archive and give you Terraform.