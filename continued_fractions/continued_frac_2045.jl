module ContinuedFracStep2045
export compute_continued_frac_2045
function compute_continued_frac_2045(x::Float64)::Float64
    a=1.0
    for k in 6:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep2045,Test
@testset "ContinuedFracStep2045" begin
    @test isfinite(compute_continued_frac_2045(0.5))
end
