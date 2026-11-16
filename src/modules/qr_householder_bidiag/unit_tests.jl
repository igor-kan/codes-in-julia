using Test, LinearAlgebra
A = [1.0 2.0 3.0; 4.0 5.0 6.0; 7.0 8.0 10.0; 2.0 -1.0 4.0]
fac = bidiagonalize(HouseholderBidiag(true), A)
@test length(fac.diag) == 3
@test length(fac.superdiag) == 2
@test verify_bidiag_factor(A, fac)
