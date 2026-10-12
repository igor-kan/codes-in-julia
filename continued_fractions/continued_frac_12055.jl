module ContinuedFracStep12055
export compute_continued_frac_12055
function compute_continued_frac_12055(x::Float64)::Float64
    a=1.0
    for k in 2:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep12055,Test
@testset "ContinuedFracStep12055" begin
    @test isfinite(compute_continued_frac_12055(0.5))
end
