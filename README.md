# INTEGRAL Demos &ndash; Basic Documents

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)

This repository contains a collection of sample documents designed to showcase the core capabilities of the **INTEGRAL Interpreter**, including document creation, mathematical typesetting, 2D vector drawing, procedural animation and 3D rendering.

## Featured Demos

### Document Creation
* **Simple Job Letter (`letter-job.i`):** A simple but professional-looking 2-page job recommendation letter.
* **Simple Technical Paper (`paper-technical.i`):** A simple technical paper with images and 3D surface plots.

### Math Typesetting
* **Formula Pi (`formula_pi.i`):** A math equation for approximating the constant &pi;.
* **Formula Pi Dynamic (`formula_pi_dynamic.i`):** A dynamic version of the previous equation, where the number of square roots is set to 7.
* **Text and Math (`text_and_math.i`):** A demonstration of mixing text, rich-text formatting and embedded mathematical equations.
* **Math Complex (`math_complex-1.i`, `math_complex-2.i`):** Advanced mathematical typesetting using STIX v1 and STIX v2 fonts.

### Visualization & Graphics
* **Graphics & Graphics V2 (`graphics.i`, `graphics_v2.i`):** Showcases 2D vector drawing.
* **3D Model (`3d_model.i`):** Renders an embedded 3D model.
* **Animation (`animation.i`):** Demonstrates real-time procedural animation logic.

## Prerequisites
- [INTEGRAL Desktop](https://integral.ws/download-desktop) (for Windows, macOS or Linux)

## Quick Start

### Download and Setup INTEGRAL Interpreter

1. Download [INTEGRAL Desktop](https://integral.ws/download-desktop) for your platform. Extract the downloaded ZIP to a directory of your choice. We'll refer to this directory as `PATH_TO_INTEGRAL_EXTRACT_DIR`.

2. Add INTEGRAL Interpreter to your system PATH using the commands below. When typing these commands, make sure you replace `/PATH_TO_INTEGRAL_EXTRACT_DIR` (or `C:\PATH_TO_INTEGRAL_EXTRACT_DIR` on Windows) with the path to your actual extraction folder.

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

1. [Download](https://github.com/integral-system/docs-basic/archive/refs/heads/main.zip) or clone this repository (`docs-basic`):

```shell
git clone https://github.com/integral-system/docs-basic.git
```

2. Navigate to the repository's root directory (`docs-basic`) in a new terminal window.

```shell
cd docs-basic/
```

3. Execute the demos:

**Windows**

```cmd
integral-interp-win demos\3d_model.i
integral-interp-win demos\animation.i
integral-interp-win demos\formula_pi.i
integral-interp-win demos\formula_pi_dynamic.i
integral-interp-win demos\graphics.i
integral-interp-win demos\graphics_v2.i
integral-interp-win demos\letter-job.i
integral-interp-win demos\math_complex-1.i
integral-interp-win demos\math_complex-2.i
integral-interp-win demos\paper-technical.i
integral-interp-win demos\text_and_math.i
```

**macOS**

```bash
integral-interp-osx demos/3d_model.i
integral-interp-osx demos/animation.i
integral-interp-osx demos/formula_pi.i
integral-interp-osx demos/formula_pi_dynamic.i
integral-interp-osx demos/graphics.i
integral-interp-osx demos/graphics_v2.i
integral-interp-osx demos/letter-job.i
integral-interp-osx demos/math_complex-1.i
integral-interp-osx demos/math_complex-2.i
integral-interp-osx demos/paper-technical.i
integral-interp-osx demos/text_and_math.i
```

**Linux**

```bash
integral-interp-linux demos/3d_model.i
integral-interp-linux demos/animation.i
integral-interp-linux demos/formula_pi.i
integral-interp-linux demos/formula_pi_dynamic.i
integral-interp-linux demos/graphics.i
integral-interp-linux demos/graphics_v2.i
integral-interp-linux demos/letter-job.i
integral-interp-linux demos/math_complex-1.i
integral-interp-linux demos/math_complex-2.i
integral-interp-linux demos/paper-technical.i
integral-interp-linux demos/text_and_math.i
```

### View, Manipulate & Export INTEGRAL Demos

All these sample documents will open in **INTEGRAL Document Editor**, where they can be further manipulated or exported to **PDF** or **SVG** format.

### INTEGRAL Source Files

INTEGRAL source files are standard UTF-8 text files with a `.i` extension. To modify them, simply use your favorite text editor. For the best experience, set your editor's syntax highlighting to **Squirrel**, **C++**, **C** or **Java**.
