---
title: Host differences
weight: 7
---
<!-- markdownlint-disable MD041 -->
![Host differences](./Slide07.png)

- VS Code isn't the same as ConsoleHost or ISE

  Some features may not work the same. For example, the ISE doesn't support `Write-Progress`.

- Don't use `$Host.Version` when you want `$PSVersionTable.PSVersion`

  Notice the version of the Host in the PowerShell Extension terminal of VS Code.

  ```powershell
  PS> "$($Host.Name) version = $($Host.Version)"; "PowerShell version = $($PSVersionTable.PSVersion)"
  Visual Studio Code Host version = 2023.9.1
  PowerShell version = 7.3.6
  ```

- The `$Host` variable can't be replaced, so you can't use it your scripts except to get Host
  information.
