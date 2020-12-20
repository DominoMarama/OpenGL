project "glad"
	kind "StaticLib"
	language "C"
	staticruntime "on"

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

	filter "system:linux"
		links "dl"

-- Push functions to workspace

local inc_dirs = path.getabsolute( "include" )

project "*"

function includeGlad()
	includedirs ( inc_dirs )
end

function linkGlad()
	filter "kind:not StaticLib"
		links "glad"
	filter {}
end
