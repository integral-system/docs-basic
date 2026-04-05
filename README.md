# INTEGRAL Demos &ndash; Basic Documents

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)

Description will go here...

## Prerequisites
- [INTEGRAL Desktop](https://integral.ws/download-desktop) (for Windows, macOS or Linux)

## Quick Start

1. Download INTEGRAL Desktop for your platform. Extract the downloaded ZIP to a directory of your choice. We'll refer to this directory as **path_to_integral_extract_dir**.

2. Add the INTEGRAL Interpreter to your PATH:

**Windows (PowerShell)**

```powershell
[System.Environment]::SetEnvironmentVariable("PATH", $env:PATH + ";C:\path_to_integral_extract_dir\exec", "User")
```

**Windows (Command Prompt)**

```cmd
setx PATH "%PATH%;C:\path\to\integral_extract_dir\exec"
```

**macOS**

```bash
sudo ln -s /path_to_integral_extract_dir/exec/integral-interp-osx /usr/local/bin/integral-interp-osx
```
**Linux**

```bash
sudo ln -s /path_to_integral_extract_dir/exec/integral-interp-linux /usr/local/bin/integral-interp-linux
```

3. Close and reopen your Terminal so the new PATH settings take effect. You can now run INTEGRAL Interpreter from any Terminal window.

4. [Download](https://github.com/integral-system/docs-basic/archive/refs/heads/main.zip) or clone this repository:

```shell
git clone https://github.com/integral-system/docs-basic.git
```

5. Enter the **demos** directory and execute the demos:

```shell
cd docs-basic/demos
```

**Windows**

```cmd
integral-interp-win 3d_model.i
integral-interp-win animation.i
integral-interp-win formula_pi.i
```

**macOS**

```bash
integral-interp-osx 3d_model.i
integral-interp-osx animation.i
integral-interp-osx formula_pi.i
```

**Linux**

```bash
integral-interp-linux 3d_model.i
integral-interp-linux animation.i
integral-interp-linux formula_pi.i
```
