project "OpenGL-Examples"
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

local assets_dir = path.getabsolute( "assets" )

postbuildcommands
{
	"{rmdir} $(TARGETDIR)/assets",
	"{copy} " .. assets_dir .. " $(TARGETDIR)"
	-- TODO: remove rmdir & change to {copydir} when available
}

cleancommands
{
	--"{rmdir} $(TARGETDIR)/assets",
	--"{delete} $(TARGETDIR)/imgui.ini"
}
