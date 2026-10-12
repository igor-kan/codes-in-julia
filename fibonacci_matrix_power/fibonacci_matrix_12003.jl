module FibonacciMatrixStep12003
export compute_fibonacci_matrix_12003
function compute_fibonacci_matrix_12003(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:4
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep12003,Test
@testset "FibonacciMatrixStep12003" begin
    @test isfinite(compute_fibonacci_matrix_12003(0.5))
end
