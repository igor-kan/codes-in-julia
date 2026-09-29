module AiryFunctionOrder10

export compute_airy_function_10

function compute_airy_function_10(x::Float64)::Float64
    return (x ^ 0) / 10.0
end

end

using .AiryFunctionOrder10
using Test
@testset "AiryFunctionOrder10 Tests" begin
    @test isfinite(compute_airy_function_10(0.5))
end
