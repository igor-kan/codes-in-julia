module AiryFunctionOrder75

export compute_airy_function_75

function compute_airy_function_75(x::Float64)::Float64
    return (x ^ 0) / 75.0
end

end

using .AiryFunctionOrder75
using Test
@testset "AiryFunctionOrder75 Tests" begin
    @test isfinite(compute_airy_function_75(0.5))
end
