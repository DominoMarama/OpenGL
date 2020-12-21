project "OpenGL-Sandbox"
	kind "ConsoleApp"
	cppdialect "C++17"
	staticruntime "on"

	objdir ( path.join( "%{cfg.location}", buildname, "obj", "%{prj.name}" ) )
	targetdir ( path.join( "%{cfg.location}", buildname, "bin" ) )

	files
	{
		"src/**.h",
		"src/**.cpp"
	}

	includeCore()
	linkCore()
	systemFilter()
