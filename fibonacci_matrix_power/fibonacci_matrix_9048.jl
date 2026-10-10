module FibonacciMatrixStep9048
export compute_fibonacci_matrix_9048
function compute_fibonacci_matrix_9048(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:1
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep9048,Test
@testset "FibonacciMatrixStep9048" begin
    @test isfinite(compute_fibonacci_matrix_9048(0.5))
end
