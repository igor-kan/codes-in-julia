module FibonacciMatrixStep508

export compute_fibonacci_matrix_508

function compute_fibonacci_matrix_508(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:5
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end

end

using .FibonacciMatrixStep508
using Test
@testset "FibonacciMatrixStep508 Tests" begin
    @test isfinite(compute_fibonacci_matrix_508(0.5))
end
