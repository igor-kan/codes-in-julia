module ContinuedFracStep5065
export compute_continued_frac_5065
function compute_continued_frac_5065(x::Float64)::Float64
    a=1.0
    for k in 2:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep5065,Test
@testset "ContinuedFracStep5065" begin
    @test isfinite(compute_continued_frac_5065(0.5))
end
