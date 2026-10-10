module FibonacciMatrixStep9033
export compute_fibonacci_matrix_9033
function compute_fibonacci_matrix_9033(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:10
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep9033,Test
@testset "FibonacciMatrixStep9033" begin
    @test isfinite(compute_fibonacci_matrix_9033(0.5))
end
