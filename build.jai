#import "BuildCpp";
#import "Basic";
#import "Compiler";

#run {
	print( "Building static library:\n" );

	extra := #ifx OS == .WINDOWS {
		string.["/Isrc", "/D_CRT_SECURE_NO_WARNINGS"];
	} else {
		string.["-Isrc", "-D_CRT_SECURE_NO_WARNINGS"];
	}

	files :: string.["src/cgltf.cpp", "src/cgltf_write.cpp"];

	build_cpp_static_lib( "cgltf", ..files, extra=extra );
	set_build_options_dc( .{do_output=false} );
};
