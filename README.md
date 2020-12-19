# OpenGL-Core
This is a fork of TheCherno's Work-in-progress OpenGL library that aims to provide a powerful sandbox for you to learn or experiment with OpenGL, and graphics programming in general.

Since the fork, I have moved the premake5 scripts out of the git submodules so that they can be linked to their original repositories and updated more easily. I used the original repository names without changing their case.

I reworked the build system while adding Linux make with system glfw support.

I'm currently looking into adding QT Creator output as you might guess from the branch name.

## Usage

OpenGL-Core uses premake5 to configure the build and IDE environment. Platform specific scripts are included to simplify the setup process.
### Clone the repository
```
git clone --recursive https://github.com/DominoMarama/OpenGL
```

### Windows Setup

Run `scripts/Win-Premake.bat` and open `OpenGL-Sandbox.sln` in Visual Studio 2019.

`OpenGL-Sandbox/src/SandboxLayer.cpp` contains the example OpenGL code that's running.

### Linux Setup

Run `./scripts/Linux-Premake.sh` to generate the make files.

Then `make` to build all targets in debug mode.

Use `make help` to see the various build options available. For example:

`make config=release OpenGL-Sandbox` would build a release version of the sandbox project.

### Mac Setup

Mac is not currently supported.

### Adding Projects

It's best to start a new project by copying the `OpenGL-Sandbox` folder and renaming the new folder, files, classes, etc to suit the new project.

Any `.h` and `.cpp` files added to the `src` tree are automatically included by the 'premake5.lua' script in the project folder. Just remember to rename the project in that file too.

To include your project in the build you will need to add two lines to the `-- Projects` section at the end of the root `premake5.lua` script:

`include "NewProjectFolder"`  

`dofile "premake5-filters.lua"`

You can then regenerate the make files as per the setup sections above.