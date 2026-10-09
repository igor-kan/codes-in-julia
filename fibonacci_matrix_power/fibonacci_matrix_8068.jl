module FibonacciMatrixStep8068
export compute_fibonacci_matrix_8068
function compute_fibonacci_matrix_8068(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:5
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep8068,Test
@testset "FibonacciMatrixStep8068" begin
    @test isfinite(compute_fibonacci_matrix_8068(0.5))
end
