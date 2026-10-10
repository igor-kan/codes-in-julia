module FibonacciMatrixStep9073
export compute_fibonacci_matrix_9073
function compute_fibonacci_matrix_9073(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:2
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep9073,Test
@testset "FibonacciMatrixStep9073" begin
    @test isfinite(compute_fibonacci_matrix_9073(0.5))
end
