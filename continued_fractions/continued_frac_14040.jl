module ContinuedFracStep14040
export compute_continued_frac_14040
function compute_continued_frac_14040(x::Float64)::Float64
    a=1.0
    for k in 1:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep14040,Test
@testset "ContinuedFracStep14040" begin
    @test isfinite(compute_continued_frac_14040(0.5))
end
