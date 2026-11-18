using Test
@testset "lanczos_tridiag_krylov_jl_props" begin
    @test sum(parallel_norms_LanczosTr([[1.0, 2.0], [3.0]])) == 14.0
    A = [5.0 0.0; 0.0 7.0]
    sub = lanczos_tridiag(A, [1.0, 1.0], 2)
    verify_close_LanczosTr(sum(sub.alpha), 12.0, 1e-12)
end
