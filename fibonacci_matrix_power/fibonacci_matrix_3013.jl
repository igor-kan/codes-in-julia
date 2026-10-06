module FibonacciMatrixStep3013
export compute_fibonacci_matrix_3013
function compute_fibonacci_matrix_3013(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:2
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep3013,Test
@testset "FibonacciMatrixStep3013" begin
    @test isfinite(compute_fibonacci_matrix_3013(0.5))
end
