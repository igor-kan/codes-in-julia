module FibonacciMatrixStep603

export compute_fibonacci_matrix_603

function compute_fibonacci_matrix_603(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:4
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end

end

using .FibonacciMatrixStep603
using Test
@testset "FibonacciMatrixStep603 Tests" begin
    @test isfinite(compute_fibonacci_matrix_603(0.5))
end
