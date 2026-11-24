using Test
@testset "lagrange_bary_jl_d59_props" begin
    @test sum(parallel_norms_BaryD59([[1.0, 2.0], [3.0]])) == 14.0
    for x in (0.0, 0.5, 1.5, 2.5)
        @test verify_close_BaryD59(barycentric_eval([-1.0, 0.0, 2.0], [1.0, 0.0, 4.0], x), x*x, 1e-11) <= 1e-11
    end
end
