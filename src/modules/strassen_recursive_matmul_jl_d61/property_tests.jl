using Test
@testset "strassen_recursive_matmul_jl_d61_props" begin
    @test sum(parallel_norms_Strassen([[1.0, 2.0], [3.0]])) == 14.0
    a = [1.0 2.0 3.0 4.0; 5.0 6.0 7.0 8.0; 9.0 10.0 11.0 12.0; 13.0 14.0 15.0 16.0]
    b = [16.0 15.0 14.0 13.0; 12.0 11.0 10.0 9.0; 8.0 7.0 6.0 5.0; 4.0 3.0 2.0 1.0]
    verify_close_Strassen(maximum(abs.(strassen_mul(a, b) .- (a * b))), 0.0, 1e-10)
end
