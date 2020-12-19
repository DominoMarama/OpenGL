project "OpenGL-Examples"
    kind "ConsoleApp"
    cppdialect "C++17"
    staticruntime "on"

    targetdir ("../bin/" .. outputdir .. "/%{prj.name}")
    objdir ("../bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/**.h",
        "src/**.cpp"
    }

    includeCore()
    includeGlad()
    includeImGui()

    linkCore()
    linkGlad()
    linkImGui()

assets_target_dir = path.getabsolute( "../bin/" .. outputdir .. "/%{prj.name}/" )
assets_dir = path.getabsolute( "assets" )

postbuildcommands
{
    "{rmdir} " .. assets_target_dir .. "/assets",
    "{copy} " .. assets_dir .. " " .. assets_target_dir
    -- TODO: remove rmdir & change to {copydir} when available
}

cleancommands
{
    "{rmdir} " .. assets_target_dir .. "/assets",
    "{delete} " .. assets_target_dir .. "/imgui.ini"
}

