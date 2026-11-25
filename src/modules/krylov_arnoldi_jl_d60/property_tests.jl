using Test
@testset "krylov_arnoldi_jl_d60_props" begin
    @test sum(parallel_norms_Arnoldi([[1.0, 2.0], [3.0]])) == 14.0
    a = [5.0 2.0 0.0; 2.0 4.0 1.0; 0.0 1.0 3.0]
    af = arnoldi_iterate(a, [1.0, 1.0, 0.0], 2)
    lhs = a * af.q[:, 1:2]
    rhs = af.q * af.h
    verify_close_Arnoldi(maximum(abs.(lhs .- rhs)), 0.0, 1e-10)
end
