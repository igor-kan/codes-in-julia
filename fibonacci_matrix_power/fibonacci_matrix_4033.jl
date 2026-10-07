module FibonacciMatrixStep4033
export compute_fibonacci_matrix_4033
function compute_fibonacci_matrix_4033(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:2
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep4033,Test
@testset "FibonacciMatrixStep4033" begin
    @test isfinite(compute_fibonacci_matrix_4033(0.5))
end
