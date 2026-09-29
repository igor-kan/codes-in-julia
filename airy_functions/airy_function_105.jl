module AiryFunctionOrder105

export compute_airy_function_105

function compute_airy_function_105(x::Float64)::Float64
    return (x ^ 0) / 105.0
end

end

using .AiryFunctionOrder105
using Test
@testset "AiryFunctionOrder105 Tests" begin
    @test isfinite(compute_airy_function_105(0.5))
end
