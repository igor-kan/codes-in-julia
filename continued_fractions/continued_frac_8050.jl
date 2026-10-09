module ContinuedFracStep8050
export compute_continued_frac_8050
function compute_continued_frac_8050(x::Float64)::Float64
    a=1.0
    for k in 5:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep8050,Test
@testset "ContinuedFracStep8050" begin
    @test isfinite(compute_continued_frac_8050(0.5))
end
