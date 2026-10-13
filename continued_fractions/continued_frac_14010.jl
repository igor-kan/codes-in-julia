module ContinuedFracStep14010
export compute_continued_frac_14010
function compute_continued_frac_14010(x::Float64)::Float64
    a=1.0
    for k in 1:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep14010,Test
@testset "ContinuedFracStep14010" begin
    @test isfinite(compute_continued_frac_14010(0.5))
end
