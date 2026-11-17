using Test
@testset "tridiagonal_parallel" begin
    sys = TridiagSystem([-0.5, -0.5, -0.5, -0.5], [3.0, 3.0, 3.0, 3.0, 3.0], [-0.5, -0.5, -0.5, -0.5])
    r1 = [1.0, 2.0, 3.0, 4.0, 5.0]
    r2 = [5.0, 4.0, 3.0, 2.0, 1.0]
    xs = parallel_thomas_solve(sys, [r1, r2])
    verify_thomas_residual(sys, xs[1], r1)
    verify_thomas_residual(sys, xs[2], r2)
end
