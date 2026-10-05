module FibonacciMatrixStep2103
export compute_fibonacci_matrix_2103
function compute_fibonacci_matrix_2103(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:4
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep2103,Test
@testset "FibonacciMatrixStep2103" begin
    @test isfinite(compute_fibonacci_matrix_2103(0.5))
end
