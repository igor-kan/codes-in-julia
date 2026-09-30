module FibonacciMatrixStep58

export compute_fibonacci_matrix_58

function compute_fibonacci_matrix_58(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:11
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end

end

using .FibonacciMatrixStep58
using Test
@testset "FibonacciMatrixStep58 Tests" begin
    @test isfinite(compute_fibonacci_matrix_58(0.5))
end
