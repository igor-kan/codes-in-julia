module FibonacciMatrixStep4048
export compute_fibonacci_matrix_4048
function compute_fibonacci_matrix_4048(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:5
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep4048,Test
@testset "FibonacciMatrixStep4048" begin
    @test isfinite(compute_fibonacci_matrix_4048(0.5))
end
