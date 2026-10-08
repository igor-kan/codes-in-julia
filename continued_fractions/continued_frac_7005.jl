module ContinuedFracStep7005
export compute_continued_frac_7005
function compute_continued_frac_7005(x::Float64)::Float64
    a=1.0
    for k in 4:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep7005,Test
@testset "ContinuedFracStep7005" begin
    @test isfinite(compute_continued_frac_7005(0.5))
end
