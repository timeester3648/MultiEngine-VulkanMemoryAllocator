void main(MultiBuild::Workspace& workspace) {	
	auto project = workspace.create_project(".");
	auto properties = project.properties();

	properties.name("VulkanMemoryAllocator");
	properties.binary_object_kind(MultiBuild::BinaryObjectKind::eStaticLib);
	properties.license("./LICENSE.txt");

	properties.project_includes("Vulkan-Headers");

	project.include_own_required_includes(true);
	project.add_required_project_include({
		"./include"
	});

	properties.files({
		"./include/*.h",
		"./src/vk_mem_alloc.cpp"
	});
}