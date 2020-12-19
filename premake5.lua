-- Workspace

workspace "OpenGL"
    language "C++"
    architecture "x64"

-- Configurations

configurations
{
    "Debug",
    "Release"
}

flags
{
    "MultiProcessorCompile"
}

-- Directories

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

includedirs
{
    "vendor/spdlog/include",
    "vendor/glm",
    "vendor/stb_image"
}

-- Libraries

include "vendor/glad"
include "vendor/imgui"
include "OpenGL-Core"
-- TODO: Add optional glfw for Windows

-- Projects

include "OpenGL-Examples"
dofile "premake5-filters.lua"

include "OpenGL-Sandbox"
dofile "premake5-filters.lua"
