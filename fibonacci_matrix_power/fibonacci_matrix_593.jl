module FibonacciMatrixStep593

export compute_fibonacci_matrix_593

function compute_fibonacci_matrix_593(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:6
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end

end

using .FibonacciMatrixStep593
using Test
@testset "FibonacciMatrixStep593 Tests" begin
    @test isfinite(compute_fibonacci_matrix_593(0.5))
end
