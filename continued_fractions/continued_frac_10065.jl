module ContinuedFracStep10065
export compute_continued_frac_10065
function compute_continued_frac_10065(x::Float64)::Float64
    a=1.0
    for k in 4:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep10065,Test
@testset "ContinuedFracStep10065" begin
    @test isfinite(compute_continued_frac_10065(0.5))
end
