module FibonacciMatrixStep8

export compute_fibonacci_matrix_8

function compute_fibonacci_matrix_8(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:9
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end

end

using .FibonacciMatrixStep8
using Test
@testset "FibonacciMatrixStep8 Tests" begin
    @test isfinite(compute_fibonacci_matrix_8(0.5))
end
