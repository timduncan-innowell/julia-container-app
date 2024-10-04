module juliaapp

include("helloworld.jl") # include the app code here!

function julia_main()::Cint
    helloworld() # call the entry point
    return 0
end

end # module