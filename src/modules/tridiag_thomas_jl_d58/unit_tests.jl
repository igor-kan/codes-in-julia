using Test
@testset "tridiag_thomas_jl_d58_unit" begin
    @test validate_nonempty_TdmaD58([1.0]) == 1
    x = solve_tdma([0.0, -1.0, -1.0], [4.0, 4.0, 4.0], [-1.0, -1.0, 0.0], [3.0, 2.0, 3.0])
    @test verify_close_TdmaD58(sum(abs2, x .- 1.0), 0.0, 1e-12) <= 1e-12
end
