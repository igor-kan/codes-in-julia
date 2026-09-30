module FibonacciMatrixStep118

export compute_fibonacci_matrix_118

function compute_fibonacci_matrix_118(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:11
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end

end

using .FibonacciMatrixStep118
using Test
@testset "FibonacciMatrixStep118 Tests" begin
    @test isfinite(compute_fibonacci_matrix_118(0.5))
end
