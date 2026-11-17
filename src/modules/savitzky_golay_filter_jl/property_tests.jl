using Test
@testset "sg_parallel" begin
    kern = compute_sg_weights(SavitzkyGolay(3, 3))
    cub = [Float64(i^3 - 2*i) for i in 1:20]
    res = parallel_sg_smooth(kern, [cub, 2.0 .* cub])
    @test abs(res[1][10] - cub[10]) < 1e-9
end
