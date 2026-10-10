module ContinuedFracStep9005
export compute_continued_frac_9005
function compute_continued_frac_9005(x::Float64)::Float64
    a=1.0
    for k in 6:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep9005,Test
@testset "ContinuedFracStep9005" begin
    @test isfinite(compute_continued_frac_9005(0.5))
end
