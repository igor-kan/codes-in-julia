module FibonacciMatrixStep3043
export compute_fibonacci_matrix_3043
function compute_fibonacci_matrix_3043(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:8
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep3043,Test
@testset "FibonacciMatrixStep3043" begin
    @test isfinite(compute_fibonacci_matrix_3043(0.5))
end
