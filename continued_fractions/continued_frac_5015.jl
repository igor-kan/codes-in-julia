module ContinuedFracStep5015
export compute_continued_frac_5015
function compute_continued_frac_5015(x::Float64)::Float64
    a=1.0
    for k in 6:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep5015,Test
@testset "ContinuedFracStep5015" begin
    @test isfinite(compute_continued_frac_5015(0.5))
end
