module FibonacciMatrixStep10088
export compute_fibonacci_matrix_10088
function compute_fibonacci_matrix_10088(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:9
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep10088,Test
@testset "FibonacciMatrixStep10088" begin
    @test isfinite(compute_fibonacci_matrix_10088(0.5))
end
