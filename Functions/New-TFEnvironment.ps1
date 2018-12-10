# Univeristy of North Georgia 2018
# Written By: Luke Brady

# Expand the terraform.zip file and add to path.
function New-TFEnvironment {
    # Expand the Terraform archive into the bin directory.
    $terraformPath = "$PSScriptRoot\..\bin\terraform.exe"
    if($(Test-Path -Path $terraformPath) -ne $true) {
        try {
            Write-Host -ForegroundColor DarkMagenta "Info: Expanding the Terraform executable."
            Expand-Archive -Path "$PSScriptRoot/../bin/terraform*" -DestinationPath "$PSScriptRoot/../bin/"
        } catch {
            Write-Host -ForegroundColor Red  "Error: An error occured while expanding the Terraform executable."
        }
    } else {
        Write-Host -ForegroundColor DarkMagenta "Info: A Terraform environment already exists."
    }
}