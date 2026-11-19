using Test
@testset "conjugate_gradient_spd_jl_unit" begin
    @test validate_nonempty_CgSpd([1.0]) == 1
    A = [4.0 1.0 0.0; 1.0 4.0 1.0; 0.0 1.0 4.0]; b = [6.0, 12.0, 14.0]; tr = solve_cg_spd(A, b); verify_close_CgSpd(maximum(abs.(A * tr.x .- b)), 0.0, 1e-10)
end
