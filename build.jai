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

	build_cpp_static_lib( "cgltf", "src/cgltf.cpp", extra=extra );
	set_build_options_dc( .{do_output=false} );
};
