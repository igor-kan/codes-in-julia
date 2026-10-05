module FibonacciMatrixStep2098
export compute_fibonacci_matrix_2098
function compute_fibonacci_matrix_2098(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:11
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep2098,Test
@testset "FibonacciMatrixStep2098" begin
    @test isfinite(compute_fibonacci_matrix_2098(0.5))
end
