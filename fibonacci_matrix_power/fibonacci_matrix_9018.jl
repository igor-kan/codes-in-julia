module FibonacciMatrixStep9018
export compute_fibonacci_matrix_9018
function compute_fibonacci_matrix_9018(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:7
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep9018,Test
@testset "FibonacciMatrixStep9018" begin
    @test isfinite(compute_fibonacci_matrix_9018(0.5))
end
