project "imgui"
    kind "StaticLib"
    cppdialect "C++17"
    staticruntime "On"

    targetdir ("../bin/" .. outputdir .. "/%{prj.name}")
    objdir ("../bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "imgui/imconfig.h",
        "imgui/imgui.h",
        "imgui/imgui.cpp",
        "imgui/imgui_draw.cpp",
        "imgui/imgui_internal.h",
        "imgui/imgui_widgets.cpp",
        "imgui/imstb_rectpack.h",
        "imgui/imstb_textedit.h",
        "imgui/imstb_truetype.h",
        "imgui/imgui_demo.cpp"
    }

-- Push functions to workspace

imgui_inc = path.getabsolute( "imgui" )

project "*"

function includeImGui()
    includedirs ( imgui_inc )
end

function linkImGui()
    libdirs ("../bin/" .. outputdir .. "/%{prj.name}")

    filter "kind:not StaticLib"
        links "imgui"
    filter {}
end