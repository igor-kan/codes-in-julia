using Test
@testset "muller_complex_root_jl_d61_unit" begin
    @test validate_nonempty_Muller([1.0]) == 1
    res = muller_root([-2.0, 0.0, 1.0], 1.0 + 0.0im)
    verify_close_Muller(real(res.root), sqrt(2.0), 1e-8)
    verify_close_Muller(res.residual, 0.0, 1e-8)
end
