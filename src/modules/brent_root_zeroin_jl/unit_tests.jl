using Test
r1 = find_root(BrentSolver(), x -> cos(x) - x, 0.0, 1.0)
@test verify_root_residual(x -> cos(x) - x, r1)
r2 = find_root(BrentSolver(), x -> x^3 - 2x - 5, 1.0, 3.0)
@test verify_root_residual(x -> x^3 - 2x - 5, r2)
