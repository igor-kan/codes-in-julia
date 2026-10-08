module ContinuedFracStep7010
export compute_continued_frac_7010
function compute_continued_frac_7010(x::Float64)::Float64
    a=1.0
    for k in 3:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep7010,Test
@testset "ContinuedFracStep7010" begin
    @test isfinite(compute_continued_frac_7010(0.5))
end
