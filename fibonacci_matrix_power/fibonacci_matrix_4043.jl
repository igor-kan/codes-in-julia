module FibonacciMatrixStep4043
export compute_fibonacci_matrix_4043
function compute_fibonacci_matrix_4043(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:12
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep4043,Test
@testset "FibonacciMatrixStep4043" begin
    @test isfinite(compute_fibonacci_matrix_4043(0.5))
end
