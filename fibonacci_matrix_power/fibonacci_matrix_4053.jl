module FibonacciMatrixStep4053
export compute_fibonacci_matrix_4053
function compute_fibonacci_matrix_4053(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:10
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep4053,Test
@testset "FibonacciMatrixStep4053" begin
    @test isfinite(compute_fibonacci_matrix_4053(0.5))
end
