module ContinuedFracStep2105
export compute_continued_frac_2105
function compute_continued_frac_2105(x::Float64)::Float64
    a=1.0
    for k in 6:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep2105,Test
@testset "ContinuedFracStep2105" begin
    @test isfinite(compute_continued_frac_2105(0.5))
end
