# INTEGRAL Demos &ndash; Basic Documents

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)

This repository contains a collection of sample documents designed to showcase the core capabilities of the **INTEGRAL Interpreter**: document creation, mathematical typesetting, 2D vector drawing, simple animation, and 3D model embedding and rendering.

## Featured Demos

### Document Creation
* **Simple Job Letter (`letter-job.i`):** A simple but professional-looking 2-page job recommendation letter.
* **Simple Technical Paper (`paper-technical.i`):** A simple technical paper with images and 3D surface plots.

![INTEGRAL Basic Document Screenshot - 1](https://github.com/user-attachments/assets/aa61572a-5371-441b-b55d-f107dd881793)

### Math Typesetting
* **Formula Pi (`formula_pi.i`):** A math equation for approximating the constant &pi;.
* **Formula Pi Dynamic (`formula_pi_dynamic.i`):** A dynamic version of the previous equation, where the number of square roots is set to 7.
* **Text and Math (`text_and_math.i`):** A demonstration of mixing text, rich-text formatting and embedded mathematical equations.
* **Math Complex (`math_complex-1.i`, `math_complex-2.i`):** Advanced mathematical typesetting using STIX v1 and STIX v2 fonts.

![INTEGRAL Basic Document Screenshot - 2](https://github.com/user-attachments/assets/1dc75446-f246-4dc2-b2fd-316bc548db4a)

![INTEGRAL Basic Document Screenshot - 3](https://github.com/user-attachments/assets/865f766e-d96d-46f9-a097-6993280e1ab1)

### Visualization & Graphics
* **Graphics & Graphics V2 (`graphics.i`, `graphics_v2.i`):** Showcases 2D vector drawing.
* **3D Model (`3d_model.i`):** Renders an embedded 3D model.
* **Animation (`animation.i`):** Demonstrates how to create a simple animated GIF.

![INTEGRAL Basic Document Screenshot - 4](https://github.com/user-attachments/assets/655c2f69-aa95-4d74-a4dd-b3f8989b9450)

![INTEGRAL Basic Document Screenshot - 5](https://github.com/user-attachments/assets/95868be8-71a5-4e52-b42b-1d387b24ae65)

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

### View, Manipulate & Export

All these sample documents will open in **INTEGRAL Document Editor**, where they can be further manipulated or exported to **PDF** or **SVG** format.

![INTEGRAL Document Editor Screenshot - Format Text](https://github.com/user-attachments/assets/f410027d-278c-4b0c-b871-9ddab159ea92)

![INTEGRAL Document Editor Screenshot - Print / PDF](https://github.com/user-attachments/assets/9f384004-0629-48c8-80e0-5994e1861b3c)

![INTEGRAL Document Editor Screenshot - Export To SVG](https://github.com/user-attachments/assets/c4622149-fb4b-496e-8a97-e1e110cf95c7)

### INTEGRAL Source Files

INTEGRAL is an extension of the Squirrel programming language. INTEGRAL source files are standard UTF-8 text files with a `.i` extension. To modify them, simply use your favorite text editor. For the best experience, set your editor's syntax highlighting to **Squirrel**; if that isn't available, **C++**, **C** or **Java** are suitable alternatives.
