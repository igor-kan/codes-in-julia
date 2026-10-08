module ContinuedFracStep5020
export compute_continued_frac_5020
function compute_continued_frac_5020(x::Float64)::Float64
    a=1.0
    for k in 5:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep5020,Test
@testset "ContinuedFracStep5020" begin
    @test isfinite(compute_continued_frac_5020(0.5))
end
