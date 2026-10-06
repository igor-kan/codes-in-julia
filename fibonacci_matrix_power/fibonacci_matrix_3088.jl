module FibonacciMatrixStep3088
export compute_fibonacci_matrix_3088
function compute_fibonacci_matrix_3088(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:5
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep3088,Test
@testset "FibonacciMatrixStep3088" begin
    @test isfinite(compute_fibonacci_matrix_3088(0.5))
end
