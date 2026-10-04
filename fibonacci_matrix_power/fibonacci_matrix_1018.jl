module FibonacciMatrixStep1018

export compute_fibonacci_matrix_1018

function compute_fibonacci_matrix_1018(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:11
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end

end

using .FibonacciMatrixStep1018
using Test
@testset "FibonacciMatrixStep1018 Tests" begin
    @test isfinite(compute_fibonacci_matrix_1018(0.5))
end
