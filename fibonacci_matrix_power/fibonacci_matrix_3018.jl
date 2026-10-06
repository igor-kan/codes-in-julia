module FibonacciMatrixStep3018
export compute_fibonacci_matrix_3018
function compute_fibonacci_matrix_3018(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:7
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep3018,Test
@testset "FibonacciMatrixStep3018" begin
    @test isfinite(compute_fibonacci_matrix_3018(0.5))
end
