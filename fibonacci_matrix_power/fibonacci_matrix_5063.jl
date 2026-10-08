module FibonacciMatrixStep5063
export compute_fibonacci_matrix_5063
function compute_fibonacci_matrix_5063(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:12
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep5063,Test
@testset "FibonacciMatrixStep5063" begin
    @test isfinite(compute_fibonacci_matrix_5063(0.5))
end
