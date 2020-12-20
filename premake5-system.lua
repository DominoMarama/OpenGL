function systemFilter()

-- Platform Filter Windows

filter "system:windows"
	systemversion "latest"

	links
	{
		"opengl32.lib"
	}

	defines
	{
		"_CRT_SECURE_NO_WARNINGS",
		"GLCORE_PLATFORM_WINDOWS"
	}

-- Platform Filter Linux

filter "system:linux"
	systemversion "latest"
	pic "On"

	includedirs
	{
		"/usr/include"
	}

	links
	{
		"Xrandr",
		"Xi",
		"GLU",
		"GL",
		"X11",
		"dl"
	}

	defines
	{
		"GLCORE_PLATFORM_LINUX"
	}

-- Configuration Filters

filter "configurations:Debug"
	defines "GLCORE_DEBUG"
	runtime "Debug"
	symbols "on"

filter "configurations:Release"
	defines "GLCORE_RELEASE"
	runtime "Release"
	optimize "on"

filter {}

end
