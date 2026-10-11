module FibonacciMatrixStep10048
export compute_fibonacci_matrix_10048
function compute_fibonacci_matrix_10048(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:5
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep10048,Test
@testset "FibonacciMatrixStep10048" begin
    @test isfinite(compute_fibonacci_matrix_10048(0.5))
end
