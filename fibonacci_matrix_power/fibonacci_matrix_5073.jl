module FibonacciMatrixStep5073
export compute_fibonacci_matrix_5073
function compute_fibonacci_matrix_5073(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:10
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep5073,Test
@testset "FibonacciMatrixStep5073" begin
    @test isfinite(compute_fibonacci_matrix_5073(0.5))
end
