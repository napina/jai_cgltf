#import "BuildCpp";
#import "Basic";
#import "Compiler";

#run {
	print( "Building static library:\n" );
	#if OS == .WINDOWS {
		build_cpp_static_lib( "cgltf", "cgltf.cpp", extra=string.[
        	"/I\"cgltf\"",
        	"/D\"_CRT_SECURE_NO_WARNINGS\""
        ] );
	}

	set_build_options_dc( .{do_output=false} );
};
