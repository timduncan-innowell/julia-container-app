import Pkg; 
Pkg.add("PackageCompiler"); 
Pkg.activate("/juliapp");

using PackageCompiler; 

create_app("juliaapp", "./app/juliaapp", force=true);