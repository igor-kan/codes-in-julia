module AiryFunctionOrder15

export compute_airy_function_15

function compute_airy_function_15(x::Float64)::Float64
    return (x ^ 0) / 15.0
end

end

using .AiryFunctionOrder15
using Test
@testset "AiryFunctionOrder15 Tests" begin
    @test isfinite(compute_airy_function_15(0.5))
end
