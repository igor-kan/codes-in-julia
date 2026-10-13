module ContinuedFracStep14045
export compute_continued_frac_14045
function compute_continued_frac_14045(x::Float64)::Float64
    a=1.0
    for k in 6:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep14045,Test
@testset "ContinuedFracStep14045" begin
    @test isfinite(compute_continued_frac_14045(0.5))
end
