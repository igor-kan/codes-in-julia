using Test
@testset "brent_root_scalar_d57_unit" begin
    @test validate_nonempty_SecD57([1.0]) == 1
    r = hybrid_root(x -> x^3 - x - 2.0, 1.0, 2.0)
    @test verify_close_SecD57(r^3 - r - 2.0, 0.0, 1e-10) <= 1e-10
end
