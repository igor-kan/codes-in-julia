module FibonacciMatrixStep608

export compute_fibonacci_matrix_608

function compute_fibonacci_matrix_608(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:9
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end

end

using .FibonacciMatrixStep608
using Test
@testset "FibonacciMatrixStep608 Tests" begin
    @test isfinite(compute_fibonacci_matrix_608(0.5))
end
