module ContinuedFracStep14065
export compute_continued_frac_14065
function compute_continued_frac_14065(x::Float64)::Float64
    a=1.0
    for k in 2:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep14065,Test
@testset "ContinuedFracStep14065" begin
    @test isfinite(compute_continued_frac_14065(0.5))
end
