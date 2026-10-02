module FibonacciMatrixStep538

export compute_fibonacci_matrix_538

function compute_fibonacci_matrix_538(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:11
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end

end

using .FibonacciMatrixStep538
using Test
@testset "FibonacciMatrixStep538 Tests" begin
    @test isfinite(compute_fibonacci_matrix_538(0.5))
end
