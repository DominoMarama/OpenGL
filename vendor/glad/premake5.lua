project "glad"
	kind "StaticLib"
	language "C"
	staticruntime "on"

	targetdir ("../../bin/" .. outputdir .. "/%{prj.name}")
	objdir ("../../bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/glad/glad.h",
		"include/KHR/khrplatform.h",
		"src/glad.c"
	}

	includedirs
	{
		"include"
	}

-- Push functions to workspace

glad_inc = path.getabsolute( "include" )

project "*"

function includeGlad()
	includedirs ( glad_inc )
end

function linkGlad()
	filter "kind:not StaticLib"
		links "glad"
	filter {}
end
