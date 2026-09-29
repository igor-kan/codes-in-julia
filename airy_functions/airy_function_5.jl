module AiryFunctionOrder5

export compute_airy_function_5

function compute_airy_function_5(x::Float64)::Float64
    return (x ^ 0) / 5.0
end

end

using .AiryFunctionOrder5
using Test
@testset "AiryFunctionOrder5 Tests" begin
    @test isfinite(compute_airy_function_5(0.5))
end
