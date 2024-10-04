Sample Julia app to show how to build a container for distribution of a compiled version of the code. It contains a Package, JSON.jl, included for distribution as an example.  

Start by creating the base Julia app:  

> julia -e 'import Pkg; Pkg.generate(\"juliaapp\");'

Add your own code into `./juliaapp/src`  

Add packages to the `Project.toml`  

> julia -e 'import Pkg; Pkg.activate("/juliaapp"); Pkg.add("JSON");'

Building the container image  

> docker build . -t juliaapp-image:0.1

Running the image

> docker run --rm -it juliaapp-image:01 /app/bin/juliaapp