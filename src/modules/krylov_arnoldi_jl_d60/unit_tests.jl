using Test
@testset "krylov_arnoldi_jl_d60_unit" begin
    @test validate_nonempty_Arnoldi([1.0]) == 1
    a = [4.0 1.0 0.0; 1.0 3.0 1.0; 0.0 1.0 2.0]
    af = arnoldi_iterate(a, [1.0, 0.0, 0.0], 2)
    verify_close_Arnoldi(sum(abs2, af.q[:, 1]), 1.0, 1e-12)
    verify_close_Arnoldi(sum(af.q[:, 1] .* af.q[:, 2]), 0.0, 1e-12)
end
