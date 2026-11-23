using Test
@testset "simpson_comp_jl_d58_props" begin
    @test sum(parallel_norms_SimpD58([[1.0, 2.0], [3.0]])) == 14.0
    s1 = composite_simpson(sin, 0.0, Float64(pi), 20)
    @test verify_close_SimpD58(s1, 2.0, 1e-5) <= 1e-5
end
