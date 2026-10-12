module ContinuedFracStep12050
export compute_continued_frac_12050
function compute_continued_frac_12050(x::Float64)::Float64
    a=1.0
    for k in 3:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep12050,Test
@testset "ContinuedFracStep12050" begin
    @test isfinite(compute_continued_frac_12050(0.5))
end
