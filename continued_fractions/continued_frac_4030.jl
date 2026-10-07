module ContinuedFracStep4030
export compute_continued_frac_4030
function compute_continued_frac_4030(x::Float64)::Float64
    a=1.0
    for k in 5:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep4030,Test
@testset "ContinuedFracStep4030" begin
    @test isfinite(compute_continued_frac_4030(0.5))
end
