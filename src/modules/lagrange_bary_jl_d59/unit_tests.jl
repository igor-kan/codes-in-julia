using Test
@testset "lagrange_bary_jl_d59_unit" begin
    @test validate_nonempty_BaryD59([1.0]) == 1
    got = barycentric_eval([0.0, 1.0, 3.0], [1.0, 2.0, 10.0], 2.0)
    @test verify_close_BaryD59(got, 5.0, 1e-11) <= 1e-11
end
