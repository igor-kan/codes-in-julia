module ContinuedFracStep9010
export compute_continued_frac_9010
function compute_continued_frac_9010(x::Float64)::Float64
    a=1.0
    for k in 5:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep9010,Test
@testset "ContinuedFracStep9010" begin
    @test isfinite(compute_continued_frac_9010(0.5))
end
