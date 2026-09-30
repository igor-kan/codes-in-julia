module FibonacciMatrixStep53

export compute_fibonacci_matrix_53

function compute_fibonacci_matrix_53(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:6
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end

end

using .FibonacciMatrixStep53
using Test
@testset "FibonacciMatrixStep53 Tests" begin
    @test isfinite(compute_fibonacci_matrix_53(0.5))
end
