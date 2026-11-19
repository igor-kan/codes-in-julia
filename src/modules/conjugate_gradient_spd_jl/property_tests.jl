using Test
@testset "conjugate_gradient_spd_jl_props" begin
    @test sum(parallel_norms_CgSpd([[1.0, 2.0], [3.0]])) == 14.0
    A = [2.0 0.0; 0.0 5.0]; tr = solve_cg_spd(A, [4.0, 15.0]); verify_close_CgSpd(sum(tr.x), 5.0, 1e-12)
end
