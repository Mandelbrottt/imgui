project "ImGui"
	kind "StaticLib"
	language "C++"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	includedirs {
		"%{prj.location}"
	}

	files {
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",

		"imguizmo/ImCurveEdit.cpp",
		"imguizmo/ImCurveEdit.h",
		"imguizmo/ImGradient.cpp",
		"imguizmo/ImGradient.h",
		"imguizmo/ImGuizmo.cpp",
		"imguizmo/ImGuizmo.h",
		"imguizmo/ImSequencer.cpp",
		"imguizmo/ImSequencer.cpp",
	}

	defines {
		"IMGUI_DEFINE_MATH_OPERATORS"
	}
	
	filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
		staticruntime "On"
		
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:not Debug"
		runtime "Release"
		optimize "on"
