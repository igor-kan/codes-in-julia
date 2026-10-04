module FibonacciMatrixStep1068

export compute_fibonacci_matrix_1068

function compute_fibonacci_matrix_1068(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:1
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end

end

using .FibonacciMatrixStep1068
using Test
@testset "FibonacciMatrixStep1068 Tests" begin
    @test isfinite(compute_fibonacci_matrix_1068(0.5))
end
