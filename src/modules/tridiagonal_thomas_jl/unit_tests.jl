using Test
@testset "tridiagonal_thomas_jl" begin
    sys = TridiagSystem([-1.0, -1.0, -1.0], [4.0, 4.0, 4.0, 4.0], [-1.0, -1.0, -1.0])
    rhs = [5.0, 5.0, 5.0, 5.0]
    x = zeros(4)
    solve_thomas!(ThomasSolver(), x, sys, rhs)
    verify_thomas_residual(sys, x, rhs)
end
