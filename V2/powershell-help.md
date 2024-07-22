To use the `Set-ExecutionPolicy` cmdlet in PowerShell, follow these steps:

### 1. **Open PowerShell**

1. Press `Win + X` and select **Windows PowerShell (Admin)** or **Windows Terminal (Admin)** if you're on Windows 11.
2. Alternatively, search for `PowerShell` in the Start menu, right-click on it, and select **Run as administrator**.

### 2. **Set the Execution Policy**

The `Set-ExecutionPolicy` cmdlet changes the user preference for the PowerShell script execution policy. Here’s how you can use it:

#### To Allow Local Scripts and Remote Signed Scripts:
```powershell
Set-ExecutionPolicy RemoteSigned
```
- **RemoteSigned**: Allows running of scripts written on the local machine and those downloaded from the internet if they are signed by a trusted publisher.

#### To Allow All Scripts (Less Secure):
```powershell
Set-ExecutionPolicy Unrestricted
```
- **Unrestricted**: Allows running of all scripts and commands. Be cautious with this setting as it allows potentially unsafe scripts to run.

#### To View the Current Execution Policy:
```powershell
Get-ExecutionPolicy
```

### 3. **Confirm the Change**

You will be prompted to confirm the change. Type `Y` (for Yes) and press `Enter`.

### 4. **Revert to Default Setting**

If you want to revert back to the default policy, which is typically **Restricted**, you can run:
```powershell
Set-ExecutionPolicy Restricted
```

### Summary of Execution Policies

- **Restricted**: No scripts can be run. This is the default setting for Windows client computers.
- **AllSigned**: Only scripts signed by a trusted publisher can be run.
- **RemoteSigned**: Scripts created locally can run, but scripts downloaded from the internet must be signed.
- **Unrestricted**: All scripts can be run regardless of origin or signing.

### Important Notes

- **Security Considerations**: Changing the execution policy affects the security of your system. Only use less restrictive policies if you trust the source of your scripts.
- **Administrative Rights**: Changing the execution policy typically requires administrative privileges.

By adjusting the execution policy, you can allow PowerShell to run scripts that might otherwise be blocked, which is necessary for running custom scripts like the mouse movement script.