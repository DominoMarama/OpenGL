# OpenGL-Core
Work-in-progress OpenGL library that aims to provide a powerful sandbox for you to learn or experiment with OpenGL, and graphics programming in general.

## Usage

Currently only "officially" supports Linux - Mac and Windows support is coming soon.
### Clone Repository
```
git clone --recursive https://github.com/TheCherno/OpenGL
```

### Windows Setup

Run `scripts/Win-Premake.bat` and open `OpenGL-Sandbox.sln` in Visual Studio 2019.

`OpenGL-Sandbox/src/SandboxLayer.cpp` contains the example OpenGL code that's running.

### Linux Setup

Run `./scripts/Linux-Premake.sh` to generate the make files.

Then `make` to build all targets in debug mode.

Use `make help` to see the various build options available.


