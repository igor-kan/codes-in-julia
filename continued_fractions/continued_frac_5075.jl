module ContinuedFracStep5075
export compute_continued_frac_5075
function compute_continued_frac_5075(x::Float64)::Float64
    a=1.0
    for k in 6:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep5075,Test
@testset "ContinuedFracStep5075" begin
    @test isfinite(compute_continued_frac_5075(0.5))
end
