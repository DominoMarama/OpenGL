# OpenGL-Core
This is a fork of TheCherno's Work-in-progress OpenGL library that aims to provide a powerful sandbox for you to learn or experiment with OpenGL, and graphics programming in general.

Since the fork, I have moved the premake5 scripts out of the git submodules so that they can be linked to their original repositories and updated more easily. I used the original repository names without changing their case.

I reworked the build system while adding Linux make with system glfw support. It now stores all generated files under a single build folder.

I'm working towards adding qmake output for QT Creator as you might guess from the branch name.

## Usage

OpenGL-Core uses premake5 to configure the build and IDE environment. Platform specific scripts are included to simplify the setup process.
### Clone the repository
```
git clone --recursive https://github.com/DominoMarama/OpenGL
```

### Windows Visual Studio

Run `tools/premake5 vs2019` and open `build/OpenGL.sln` in Visual Studio 2019.

`OpenGL-Sandbox/src/SandboxLayer.cpp` contains the example OpenGL code that's running.

### Linux Makefile

Run `./tools/premake5 gmake2` to generate the make files in a build folder.

Then `cd build` and `make` to build all targets in debug mode.

Use `make help` to see the various build options available. For example:

`make config=release OpenGL-Sandbox` would build a release version of the sandbox project.

### Linux Qmake Setup [Experimental]

Install the qmake add on for premake by running `./scripts/Linux-UpdateQmake`

Run `./tools/premake5 gmake2` to generate the pro files in a build folder.

Open `build/OpenGL.pro` in QT Creator and before configuring the project, expand the kit details and edit each build directory to remove anything QT Creator added. The directory should end with `*/OpenGL/build` and all build types have the same one.

You'll need to repeat this configuration process if `OpenGL.pro.user` is ever removed or if you open one of the child .pro files directly.

After configuring the project you will need to add the following lines to each application.pro file (OpenGL-Sandbox.pro, OpenGL-Examples.pro) in the `LIBS +=` section:

		"-ldl" \
		"-lglfw" \

This would need repeating anytime you regenerate the project files with premake.

You should now be able to build, but you will still need to manually copy the `OpenGL-Examples/assets` folder to `build/bin/`_`BuildType`_ before running that project.

Now you know why it's only experimental support for qmake at the moment.
### Mac Setup

Mac is not currently supported.

### Adding Projects

It's best to start a new project by copying the `OpenGL-Sandbox` folder and renaming the new folder, files, classes, etc to suit the new project.

Any `.h` and `.cpp` files added to the `src` tree are automatically included by the 'premake5.lua' script in the project folder. Just remember to rename the project in that file too.

To include your project in the build you will need to include your project folder in the `-- Projects` section at the end of the root `premake5.lua` script:

`include "NewProjectFolder"`  

You can then regenerate the make files as per the setup sections above.