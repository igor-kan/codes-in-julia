module FibonacciMatrixStep1023

export compute_fibonacci_matrix_1023

function compute_fibonacci_matrix_1023(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:4
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end

end

using .FibonacciMatrixStep1023
using Test
@testset "FibonacciMatrixStep1023 Tests" begin
    @test isfinite(compute_fibonacci_matrix_1023(0.5))
end
