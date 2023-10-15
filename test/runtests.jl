using CHomP
using Test

@testset "CHomP.jl" begin
    # the only test in the main pychomp2 package is broken. 
    betti_nrs = pychomp.CubicalHomology([
        [0, 0],
        [0, 1],
        [0, 2],
        [1, 0],
        [1, 2],
        [2, 0],
        [2, 1],
        [2, 2]
    ])
    @test betti_nrs == [1, 1, 0]
end
