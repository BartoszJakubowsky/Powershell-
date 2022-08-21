[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

#Prompt
Import-Module posh-git

#$omp_config = Join-Path $PSScriptRoot ".\barto.omp.json"
#oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

oh-my-posh --init --shell pwsh --config "$env:POSH_THEMES_PATH\capr4n.omp.json" | Invoke-Expression


Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
# Set-PSReadLineOption -PredictionViewStyle ListView


# Env
$env:GIT_SSH = "C:\Windows\system32\OpenSSH\ssh.exe"

# Alias
Set-Alias touch ni
Set-Alias -Name vim -Value nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

