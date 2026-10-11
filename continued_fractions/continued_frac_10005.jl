module ContinuedFracStep10005
export compute_continued_frac_10005
function compute_continued_frac_10005(x::Float64)::Float64
    a=1.0
    for k in 4:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep10005,Test
@testset "ContinuedFracStep10005" begin
    @test isfinite(compute_continued_frac_10005(0.5))
end
