module ContinuedFracStep9015
export compute_continued_frac_9015
function compute_continued_frac_9015(x::Float64)::Float64
    a=1.0
    for k in 4:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep9015,Test
@testset "ContinuedFracStep9015" begin
    @test isfinite(compute_continued_frac_9015(0.5))
end
