
using JSON;

x = Dict("k1" => "Hello", "k2" => "World", "k3" => 123)

helloworld() = print("Hello world ", JSON.json(x))