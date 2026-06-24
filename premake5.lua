project "YAML"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("bin/" .. outputdir .."/%{prj.name}")
    objdir ("bin-int/" .. outputdir .."/%{prj.name}")

    files
    {
        "include/**.h",
        "src/**.cpp",
        "src/**/*.h"
    }

    includedirs
    {
        "include"
    }

    filter "system:windows"
        systemversion "latest"
        buildoptions "/utf-8"
        defines "YAML_CPP_STATIC_DEFINE"
        
    filter "system:linux"
        systemversion "latest"
        buildoptions "/utf-8"
    
    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

