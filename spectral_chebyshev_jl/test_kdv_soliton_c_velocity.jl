include("kdv_soliton_c_velocity.jl")
using Test
using .KdvSoliton

@testset "kdv_soliton_c_velocity tests" begin
    @test isapprox(soliton_amplitude(4.0), 2.0, atol=1e-7)
end
