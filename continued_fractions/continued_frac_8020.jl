module ContinuedFracStep8020
export compute_continued_frac_8020
function compute_continued_frac_8020(x::Float64)::Float64
    a=1.0
    for k in 5:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep8020,Test
@testset "ContinuedFracStep8020" begin
    @test isfinite(compute_continued_frac_8020(0.5))
end
