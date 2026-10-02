module FibonacciMatrixStep563

export compute_fibonacci_matrix_563

function compute_fibonacci_matrix_563(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:12
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end

end

using .FibonacciMatrixStep563
using Test
@testset "FibonacciMatrixStep563 Tests" begin
    @test isfinite(compute_fibonacci_matrix_563(0.5))
end
