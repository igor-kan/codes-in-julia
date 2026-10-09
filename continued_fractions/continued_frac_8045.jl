module ContinuedFracStep8045
export compute_continued_frac_8045
function compute_continued_frac_8045(x::Float64)::Float64
    a=1.0
    for k in 6:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep8045,Test
@testset "ContinuedFracStep8045" begin
    @test isfinite(compute_continued_frac_8045(0.5))
end
