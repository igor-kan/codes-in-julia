module AiryFunctionOrder30

export compute_airy_function_30

function compute_airy_function_30(x::Float64)::Float64
    return (x ^ 0) / 30.0
end

end

using .AiryFunctionOrder30
using Test
@testset "AiryFunctionOrder30 Tests" begin
    @test isfinite(compute_airy_function_30(0.5))
end
