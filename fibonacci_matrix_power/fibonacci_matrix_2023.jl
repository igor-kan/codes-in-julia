module FibonacciMatrixStep2023
export compute_fibonacci_matrix_2023
function compute_fibonacci_matrix_2023(x::Float64)::Float64
    f0,f1=1.0,1.0
    for _ in 1:8
        f0,f1=f1,f0+f1*x*0.1
    end
    return f1
end
end
using .FibonacciMatrixStep2023,Test
@testset "FibonacciMatrixStep2023" begin
    @test isfinite(compute_fibonacci_matrix_2023(0.5))
end
