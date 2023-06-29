$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator);

if ($isAdmin) {
    Write-Host "The current script is running with administrative privileges.";
    calc.exe;
} else {
    Write-Host "The current script is not running with administrative privileges.";
    notepad.exe;
}
