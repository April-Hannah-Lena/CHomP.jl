using CHomP
using Test

@testset "CHomP.jl" begin
    # the only test in the main pychomp2 package is broken. 
    @pyinclude("tests.py")
    betti_nrs = py"betti_nrs"
    @test betti_nrs == [1, 1, 0]
end
