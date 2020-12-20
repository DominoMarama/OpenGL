-- Workspace

workspace "OpenGL"
	language "C++"
	architecture "x64"
	startproject "OpenGL-Sandbox"

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

group "Dependencies"
	include "vendor/premake5-glfw.lua"
	include "vendor/glad"
	include "vendor/premake5-imgui.lua"
group ""

include "OpenGL-Core"

-- Projects

include "OpenGL-Sandbox"
dofile "premake5-filters.lua"

include "OpenGL-Examples"
dofile "premake5-filters.lua"
