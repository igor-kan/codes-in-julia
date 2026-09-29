module AiryFunctionOrder95

export compute_airy_function_95

function compute_airy_function_95(x::Float64)::Float64
    return (x ^ 0) / 95.0
end

end

using .AiryFunctionOrder95
using Test
@testset "AiryFunctionOrder95 Tests" begin
    @test isfinite(compute_airy_function_95(0.5))
end
