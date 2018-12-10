# Univeristy of North Georgia 2018
# Written By: Luke Brady

# Expand the terraform.zip file and add to path.
function Update-TFEnvironment {
    Write-Host -ForegroundColor DarkMagenta "Info: Updating the Terraform environment."
    # Expand the Terraform archive into the bin directory.
    $terraformPath = "$PSScriptRoot\..\bin\terraform.exe"
    try {
        Write-Host -ForegroundColor DarkMagenta "Info: Expanding the Terraform executable."
        Expand-Archive -Path "$PSScriptRoot/../bin/terraform.zip" -DestinationPath "$PSScriptRoot/../bin/" -Force
    } catch {
        Write-Host -ForegroundColor Red  "Error: An error occured while expanding the Terraform executable."
    }
}