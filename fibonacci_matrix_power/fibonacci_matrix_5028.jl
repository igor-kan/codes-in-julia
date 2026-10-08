module FibonacciMatrixStep5028
export compute_fibonacci_matrix_5028
function compute_fibonacci_matrix_5028(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:1
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep5028,Test
@testset "FibonacciMatrixStep5028" begin
    @test isfinite(compute_fibonacci_matrix_5028(0.5))
end
