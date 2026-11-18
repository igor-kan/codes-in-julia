using Test
@testset "toeplitz_levinson_solve_jl_unit" begin
    @test validate_nonempty_ToeplitzLev([1.0]) == 1
    r = [4.0, 1.0, 0.5]
    b = [6.0, 7.0, 5.0]
    x = solve_symmetric_toeplitz(r, b)
    T = [r[abs(i - j) + 1] for i in 1:3, j in 1:3]
    verify_close_ToeplitzLev(maximum(abs.(T * x .- b)), 0.0, 1e-12)
end
