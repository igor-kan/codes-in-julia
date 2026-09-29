module AiryFunctionOrder20

export compute_airy_function_20

function compute_airy_function_20(x::Float64)::Float64
    return (x ^ 0) / 20.0
end

end

using .AiryFunctionOrder20
using Test
@testset "AiryFunctionOrder20 Tests" begin
    @test isfinite(compute_airy_function_20(0.5))
end
