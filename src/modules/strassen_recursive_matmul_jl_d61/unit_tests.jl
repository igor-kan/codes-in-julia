using Test
@testset "strassen_recursive_matmul_jl_d61_unit" begin
    @test validate_nonempty_Strassen([1.0]) == 1
    a = [1.0 2.0; 3.0 4.0]
    b = [5.0 6.0; 7.0 8.0]
    c = strassen_mul(a, b)
    verify_close_Strassen(c[1, 1], 19.0, 1e-12)
    verify_close_Strassen(c[2, 2], 50.0, 1e-12)
end
