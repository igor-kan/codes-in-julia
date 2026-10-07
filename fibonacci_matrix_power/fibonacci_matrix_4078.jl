module FibonacciMatrixStep4078
export compute_fibonacci_matrix_4078
function compute_fibonacci_matrix_4078(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:11
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep4078,Test
@testset "FibonacciMatrixStep4078" begin
    @test isfinite(compute_fibonacci_matrix_4078(0.5))
end
