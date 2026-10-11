module ContinuedFracStep10010
export compute_continued_frac_10010
function compute_continued_frac_10010(x::Float64)::Float64
    a=1.0
    for k in 3:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep10010,Test
@testset "ContinuedFracStep10010" begin
    @test isfinite(compute_continued_frac_10010(0.5))
end
