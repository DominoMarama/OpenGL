project "OpenGL-Core"
	kind "StaticLib"
	cppdialect "C++17"
	staticruntime "on"

	pchheader "glpch.h"
	pchsource "src/glpch.cpp"

	files
	{
		"src/**.h",
		"src/**.cpp",
		"stb_image/**.h",
		"stb_image/**.cpp",
		"glm/glm/**.hpp",
		"glm/glm/**.inl",
	}

	defines
	{
		"GLFW_INCLUDE_NONE"
	}

	includedirs
	{
		"src"
	}

	includeGLFW()
	includeGlad()
	includeImGui()

-- Push functions to workspace

core_inc = path.getabsolute( "src" )

project "*"

function includeCore()
	includedirs ( core_inc )
	includeGLFW()
	includeGlad()
	includeImGui()
end

function linkCore()
	filter "kind:not StaticLib"
		links { "OpenGL-Core" }
		linkGLFW()
		linkGlad()
		linkImGui()
	filter {}
end
