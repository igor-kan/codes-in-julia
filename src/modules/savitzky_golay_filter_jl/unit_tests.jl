using Test
@testset "savitzky_golay_filter_jl" begin
    kern = compute_sg_weights(SavitzkyGolay(2, 2))
    verify_sg_exact_poly(kern)
    quad = [Float64(i^2 + 3*i - 1) for i in 1:15]
    sm = apply_sg_interior(kern, quad)
    for i in 3:13
        @test abs(sm[i] - quad[i]) < 1e-10
    end
end
