using Test
@testset "simpson_comp_jl_d58_unit" begin
    @test validate_nonempty_SimpD58([1.0]) == 1
    v = composite_simpson(x -> x^3 + 2.0*x, 0.0, 2.0, 10)
    @test verify_close_SimpD58(v, 8.0, 1e-12) <= 1e-12
end
