module ContinuedFracStep5060
export compute_continued_frac_5060
function compute_continued_frac_5060(x::Float64)::Float64
    a=1.0
    for k in 3:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep5060,Test
@testset "ContinuedFracStep5060" begin
    @test isfinite(compute_continued_frac_5060(0.5))
end
