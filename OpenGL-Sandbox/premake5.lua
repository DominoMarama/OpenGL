project "OpenGL-Sandbox"
	kind "ConsoleApp"
	cppdialect "C++17"
	staticruntime "on"

	files
	{
		"src/**.h",
		"src/**.cpp"
	}

	includeCore()
	linkCore()
	systemFilter()
