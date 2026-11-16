using Test
r = [0.6^k for k in 0:9]
b = [sin(0.5 * k) for k in 1:10]
res = solve_sym_toeplitz(LevinsonToeplitzSolver(), r, b)
@test verify_toeplitz_residual(r, b, res)
