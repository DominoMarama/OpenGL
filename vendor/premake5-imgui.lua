project "imgui"
	kind "StaticLib"
	cppdialect "C++17"
	staticruntime "On"
	objdir ( path.join( "%{cfg.location}", buildname, "obj", "lib", "%{prj.name}" ) )
	targetdir ( path.join( "%{cfg.location}", buildname, "bin", "lib" ) )

	files
	{
		"imgui/imconfig.h",
		"imgui/imgui.h",
		"imgui/imgui.cpp",
		"imgui/imgui_draw.cpp",
		"imgui/imgui_internal.h",
		"imgui/imgui_tables.cpp",
		"imgui/imgui_widgets.cpp",
		"imgui/imstb_rectpack.h",
		"imgui/imstb_textedit.h",
		"imgui/imstb_truetype.h",
		"imgui/imgui_demo.cpp"
	}

-- Push functions to workspace

local inc_dirs = path.getabsolute( "imgui" )

project "*"

function includeImGui()
	includedirs ( inc_dirs )
end

function linkImGui()
	filter "kind:not StaticLib"
		links "imgui"
	filter {}
end
