using Test
@testset "gauss_seidel_sor_jl_props" begin
    A = [10.0 1.0 0.5; 1.0 10.0 1.0; 0.5 1.0 10.0]
    res = parallel_sor_rhs(SorSolver(SorConfig(1.0, 1e-10, 200)), A, [[1.0,2.0,3.0], [5.0,6.0,7.0]])
    verify_sor_residual(A, res[1], [1.0,2.0,3.0], 1e-9)
    verify_sor_residual(A, res[2], [5.0,6.0,7.0], 1e-9)
end
