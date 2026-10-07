module FibonacciMatrixStep4093
export compute_fibonacci_matrix_4093
function compute_fibonacci_matrix_4093(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:2
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep4093,Test
@testset "FibonacciMatrixStep4093" begin
    @test isfinite(compute_fibonacci_matrix_4093(0.5))
end
