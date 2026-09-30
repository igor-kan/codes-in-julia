module FibonacciMatrixStep108

export compute_fibonacci_matrix_108

function compute_fibonacci_matrix_108(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:1
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end

end

using .FibonacciMatrixStep108
using Test
@testset "FibonacciMatrixStep108 Tests" begin
    @test isfinite(compute_fibonacci_matrix_108(0.5))
end
