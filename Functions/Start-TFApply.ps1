# Univeristy of North Georgia 2018
# Written By: Luke Brady

# Applies a Terraform configuration and creates the machine object in Active Directory.
function Start-TFApply {
    [CmdletBinding()]
    param (
        # The domain the object will be added to.
        [Parameter(Mandatory=$false)]
        [String]
        $Domain,
        # Credential used to authenitcate against the domain controller.
        [Parameter(Mandatory=$false)]
        [System.Management.Automation.PSCredential]
        $Credential
    )
    $terraformPath = "$PSScriptRoot\..\bin\terraform.exe"
    if($(Test-Path -Path $terraformPath) -ne $False) {
        try {
            Write-Host -ForegroundColor DarkMagenta "Info: Applying Terraform configuration."
            & $terraformPath apply
        } catch {
            Write-Host -ForegroundColor Red  "Error: Cannot apply Terraform configuration."
        }
    } else {
        Write-Host -ForegroundColor Red "Error: The Terraform executable does not exist within this environment. Run New-TFEnvironment."
    }
}