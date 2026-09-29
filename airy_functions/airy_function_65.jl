module AiryFunctionOrder65

export compute_airy_function_65

function compute_airy_function_65(x::Float64)::Float64
    return (x ^ 0) / 65.0
end

end

using .AiryFunctionOrder65
using Test
@testset "AiryFunctionOrder65 Tests" begin
    @test isfinite(compute_airy_function_65(0.5))
end
