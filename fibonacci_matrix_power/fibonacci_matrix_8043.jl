module FibonacciMatrixStep8043
export compute_fibonacci_matrix_8043
function compute_fibonacci_matrix_8043(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:4
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep8043,Test
@testset "FibonacciMatrixStep8043" begin
    @test isfinite(compute_fibonacci_matrix_8043(0.5))
end
