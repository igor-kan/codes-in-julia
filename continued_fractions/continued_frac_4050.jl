module ContinuedFracStep4050
export compute_continued_frac_4050
function compute_continued_frac_4050(x::Float64)::Float64
    a=1.0
    for k in 1:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep4050,Test
@testset "ContinuedFracStep4050" begin
    @test isfinite(compute_continued_frac_4050(0.5))
end
