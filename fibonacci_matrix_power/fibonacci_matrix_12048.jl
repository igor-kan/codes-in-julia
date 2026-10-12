module FibonacciMatrixStep12048
export compute_fibonacci_matrix_12048
function compute_fibonacci_matrix_12048(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:1
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep12048,Test
@testset "FibonacciMatrixStep12048" begin
    @test isfinite(compute_fibonacci_matrix_12048(0.5))
end
