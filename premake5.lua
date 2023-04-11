include "../../premake/common_premake_defines.lua"

project "VulkanMemoryAllocator"
	kind "StaticLib"
	language "C++"
	cppdialect "C++latest"
	cdialect "C17"
	targetname "%{prj.name}"
	inlining "Auto"

	files {
		"./include/*.h",
		"./src/vk_mem_alloc.cpp"
	}

	includedirs {
		"%{IncludeDir.vma}",
		"%{IncludeDir.vulkan_headers}"
	}