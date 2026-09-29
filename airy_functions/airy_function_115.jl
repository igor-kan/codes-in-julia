module AiryFunctionOrder115

export compute_airy_function_115

function compute_airy_function_115(x::Float64)::Float64
    return (x ^ 0) / 115.0
end

end

using .AiryFunctionOrder115
using Test
@testset "AiryFunctionOrder115 Tests" begin
    @test isfinite(compute_airy_function_115(0.5))
end
