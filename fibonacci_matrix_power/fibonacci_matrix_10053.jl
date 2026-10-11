module FibonacciMatrixStep10053
export compute_fibonacci_matrix_10053
function compute_fibonacci_matrix_10053(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:10
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep10053,Test
@testset "FibonacciMatrixStep10053" begin
    @test isfinite(compute_fibonacci_matrix_10053(0.5))
end
