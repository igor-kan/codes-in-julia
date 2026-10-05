module ContinuedFracStep2010
export compute_continued_frac_2010
function compute_continued_frac_2010(x::Float64)::Float64
    a=1.0
    for k in 1:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep2010,Test
@testset "ContinuedFracStep2010" begin
    @test isfinite(compute_continued_frac_2010(0.5))
end
