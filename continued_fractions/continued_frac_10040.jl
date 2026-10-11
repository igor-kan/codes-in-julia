module ContinuedFracStep10040
export compute_continued_frac_10040
function compute_continued_frac_10040(x::Float64)::Float64
    a=1.0
    for k in 3:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep10040,Test
@testset "ContinuedFracStep10040" begin
    @test isfinite(compute_continued_frac_10040(0.5))
end
