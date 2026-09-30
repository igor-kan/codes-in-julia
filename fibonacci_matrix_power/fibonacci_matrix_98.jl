module FibonacciMatrixStep98

export compute_fibonacci_matrix_98

function compute_fibonacci_matrix_98(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:3
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end

end

using .FibonacciMatrixStep98
using Test
@testset "FibonacciMatrixStep98 Tests" begin
    @test isfinite(compute_fibonacci_matrix_98(0.5))
end
