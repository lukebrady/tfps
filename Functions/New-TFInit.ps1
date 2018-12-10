# Univeristy of North Georgia 2018
# Written By: Luke Brady

# Initialize Terraform in the current working directory.
function New-TFInit {
    $terraformPath = "$PSScriptRoot\..\bin\terraform.exe"
    if($(Test-Path -Path $terraformPath) -ne $False) {
        try {
            Write-Host -ForegroundColor DarkMagenta "Info: Initalizing Terraform."
            & $terraformPath init
        } catch {
            Write-Host -ForegroundColor Red  "Error: Cannot initalize Terraform."
        }
    } else {
        Write-Host -ForegroundColor Red "Error: The Terraform executable does not exist within this environment."
    }
}