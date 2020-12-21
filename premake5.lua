filter "action:qmake"
	require "qmake"
filter {}

-- Workspace

workspace "OpenGL"
	language "C++"
	architecture "x64"
	startproject "OpenGL-Sandbox"
	location "build"

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

include "OpenGL-Examples"
