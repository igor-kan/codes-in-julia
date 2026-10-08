module FibonacciMatrixStep5018
export compute_fibonacci_matrix_5018
function compute_fibonacci_matrix_5018(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:3
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep5018,Test
@testset "FibonacciMatrixStep5018" begin
    @test isfinite(compute_fibonacci_matrix_5018(0.5))
end
