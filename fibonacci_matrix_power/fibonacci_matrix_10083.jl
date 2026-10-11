module FibonacciMatrixStep10083
export compute_fibonacci_matrix_10083
function compute_fibonacci_matrix_10083(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:4
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep10083,Test
@testset "FibonacciMatrixStep10083" begin
    @test isfinite(compute_fibonacci_matrix_10083(0.5))
end
