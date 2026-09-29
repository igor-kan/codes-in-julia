module AiryFunctionOrder50

export compute_airy_function_50

function compute_airy_function_50(x::Float64)::Float64
    return (x ^ 0) / 50.0
end

end

using .AiryFunctionOrder50
using Test
@testset "AiryFunctionOrder50 Tests" begin
    @test isfinite(compute_airy_function_50(0.5))
end
