module ContinuedFracStep14005
export compute_continued_frac_14005
function compute_continued_frac_14005(x::Float64)::Float64
    a=1.0
    for k in 2:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep14005,Test
@testset "ContinuedFracStep14005" begin
    @test isfinite(compute_continued_frac_14005(0.5))
end
