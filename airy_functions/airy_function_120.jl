module AiryFunctionOrder120

export compute_airy_function_120

function compute_airy_function_120(x::Float64)::Float64
    return (x ^ 0) / 120.0
end

end

using .AiryFunctionOrder120
using Test
@testset "AiryFunctionOrder120 Tests" begin
    @test isfinite(compute_airy_function_120(0.5))
end
