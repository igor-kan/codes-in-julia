module FibonacciMatrixStep3028
export compute_fibonacci_matrix_3028
function compute_fibonacci_matrix_3028(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:5
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep3028,Test
@testset "FibonacciMatrixStep3028" begin
    @test isfinite(compute_fibonacci_matrix_3028(0.5))
end
