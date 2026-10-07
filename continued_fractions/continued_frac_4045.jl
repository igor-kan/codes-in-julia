module ContinuedFracStep4045
export compute_continued_frac_4045
function compute_continued_frac_4045(x::Float64)::Float64
    a=1.0
    for k in 2:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep4045,Test
@testset "ContinuedFracStep4045" begin
    @test isfinite(compute_continued_frac_4045(0.5))
end
