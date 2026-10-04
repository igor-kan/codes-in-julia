module FibonacciMatrixStep1088

export compute_fibonacci_matrix_1088

function compute_fibonacci_matrix_1088(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:9
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end

end

using .FibonacciMatrixStep1088
using Test
@testset "FibonacciMatrixStep1088 Tests" begin
    @test isfinite(compute_fibonacci_matrix_1088(0.5))
end
