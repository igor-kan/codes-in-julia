module FibonacciMatrixStep9058
export compute_fibonacci_matrix_9058
function compute_fibonacci_matrix_9058(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:11
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep9058,Test
@testset "FibonacciMatrixStep9058" begin
    @test isfinite(compute_fibonacci_matrix_9058(0.5))
end
