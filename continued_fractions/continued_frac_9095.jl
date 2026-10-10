module ContinuedFracStep9095
export compute_continued_frac_9095
function compute_continued_frac_9095(x::Float64)::Float64
    a=1.0
    for k in 6:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep9095,Test
@testset "ContinuedFracStep9095" begin
    @test isfinite(compute_continued_frac_9095(0.5))
end
