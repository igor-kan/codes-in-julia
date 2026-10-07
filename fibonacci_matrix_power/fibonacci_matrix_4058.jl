module FibonacciMatrixStep4058
export compute_fibonacci_matrix_4058
function compute_fibonacci_matrix_4058(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:3
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep4058,Test
@testset "FibonacciMatrixStep4058" begin
    @test isfinite(compute_fibonacci_matrix_4058(0.5))
end
