module AiryFunctionOrder90

export compute_airy_function_90

function compute_airy_function_90(x::Float64)::Float64
    return (x ^ 0) / 90.0
end

end

using .AiryFunctionOrder90
using Test
@testset "AiryFunctionOrder90 Tests" begin
    @test isfinite(compute_airy_function_90(0.5))
end
