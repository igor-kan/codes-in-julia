module FibonacciMatrixStep38

export compute_fibonacci_matrix_38

function compute_fibonacci_matrix_38(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:3
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end

end

using .FibonacciMatrixStep38
using Test
@testset "FibonacciMatrixStep38 Tests" begin
    @test isfinite(compute_fibonacci_matrix_38(0.5))
end
