#using Pkg
#Pkg.add("BenchmarkTools")
using BenchmarkTools
using LinearAlgebra
A = rand(100,100)
@btime norm(A)
function timing_from_a_function()
B = rand(10,10)
@btime norm($B)
end 
timing_from_a_function()
A = rand(10_000,10_000)
B = @benchmark(norm($A))