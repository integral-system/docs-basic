# INTEGRAL Demos &ndash; Basic Documents

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)

This repository contains a collection of sample documents designed to showcase the core capabilities of the **INTEGRAL Interpreter**, including high-performance 3D rendering, procedural animation and mathematical processing.

## Featured Demos

### Visualization & Graphics
* **3D Model (`3d_model.i`):** Renders high-performance 3D wireframes and geometry.
* **Animation (`animation.i`):** Demonstrates real-time procedural animation logic.
* **Graphics & Graphics V2 (`graphics.i`, `graphics_v2.i`):** Showcases 2D vector drawing, including shapes, gradients, and coordinate transformations.

### Mathematics & Computation
* **Formula Pi (`formula_pi.i`):** Demonstrates high-precision mathematical constant calculation and rendering.
* **Formula Pi Dynamic (`formula_pi_dynamic.i`):** An animated version showing step-by-step convergence of Pi.
* **Math Complex (`math_complex-1.i`, `math_complex-2.i`):** Showcases advanced handling and visualization of complex numbers and imaginary units.

### Document & Text Processing
* **Text and Math (`text_and_math.i`):** A demonstration of mixing rich-text formatting with embedded mathematical equations.
* **Paper Technical (`paper-technical.i`):** A template for generating academic-style whitepapers with professional layouts.
* **Letter Job (`letter-job.i`):** demonstrates automated document generation for formal business correspondence.

## Prerequisites
- [INTEGRAL Desktop](https://integral.ws/download-desktop) (for Windows, macOS or Linux)

## Quick Start

### Download and Setup INTEGRAL Interpreter

1. Download [INTEGRAL Desktop](https://integral.ws/download-desktop) for your platform. Extract the downloaded ZIP to a directory of your choice. We'll refer to this as **PATH_TO_INTEGRAL_EXTRACT_DIR**.

2. Add INTEGRAL Interpreter to your system PATH using the commands below. **Note:** Replace `C:\PATH_TO_INTEGRAL` or `/PATH_TO_INTEGRAL` with the path to your actual extraction folder.

**Windows (Command Prompt)**

```cmd
setx PATH "%PATH%;C:\PATH_TO_INTEGRAL_EXTRACT_DIR\exec"
```

**Windows (PowerShell)**

```powershell
[System.Environment]::SetEnvironmentVariable("PATH", $env:PATH + ";C:\PATH_TO_INTEGRAL_EXTRACT_DIR\exec", "User")
```

**macOS**

```bash
sudo ln -s /PATH_TO_INTEGRAL_EXTRACT_DIR/exec/integral-interp-osx /usr/local/bin/integral-interp-osx
```

**Linux**

```bash
sudo ln -s /PATH_TO_INTEGRAL_EXTRACT_DIR/exec/integral-interp-linux /usr/local/bin/integral-interp-linux
```

3. **Important:** Close and reopen your Terminal so the new PATH settings take effect. You can now run INTEGRAL Interpreter from any terminal window.

### Download and Execute INTEGRAL Demos

1. [Download](https://github.com/integral-system/docs-basic/archive/refs/heads/main.zip) or clone this repository:

```shell
git clone https://github.com/integral-system/docs-basic.git
```

2. Navigate to the repository's root directory in a new terminal window, then enter the **demos** directory:

```shell
cd docs-basic/demos/
```

3. Execute the demos:

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
