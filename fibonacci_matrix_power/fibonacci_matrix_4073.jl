module FibonacciMatrixStep4073
export compute_fibonacci_matrix_4073
function compute_fibonacci_matrix_4073(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:6
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep4073,Test
@testset "FibonacciMatrixStep4073" begin
    @test isfinite(compute_fibonacci_matrix_4073(0.5))
end
