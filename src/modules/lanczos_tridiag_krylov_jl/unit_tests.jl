using Test
@testset "lanczos_tridiag_krylov_jl_unit" begin
    @test validate_nonempty_LanczosTr([1.0]) == 1
    A = [4.0 1.0 0.0; 1.0 3.0 1.0; 0.0 1.0 2.0]
    sub = lanczos_tridiag(A, [1.0, 0.0, 0.0], 3)
    verify_close_LanczosTr(sum(sub.alpha), 9.0, 1e-12)
end
