module FibonacciMatrixStep1098

export compute_fibonacci_matrix_1098

function compute_fibonacci_matrix_1098(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:7
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end

end

using .FibonacciMatrixStep1098
using Test
@testset "FibonacciMatrixStep1098 Tests" begin
    @test isfinite(compute_fibonacci_matrix_1098(0.5))
end
