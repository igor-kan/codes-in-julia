module ContinuedFracStep14015
export compute_continued_frac_14015
function compute_continued_frac_14015(x::Float64)::Float64
    a=1.0
    for k in 6:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep14015,Test
@testset "ContinuedFracStep14015" begin
    @test isfinite(compute_continued_frac_14015(0.5))
end
