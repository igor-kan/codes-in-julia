module FibonacciMatrixStep9078
export compute_fibonacci_matrix_9078
function compute_fibonacci_matrix_9078(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:7
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep9078,Test
@testset "FibonacciMatrixStep9078" begin
    @test isfinite(compute_fibonacci_matrix_9078(0.5))
end
