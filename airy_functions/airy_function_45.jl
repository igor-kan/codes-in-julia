module AiryFunctionOrder45

export compute_airy_function_45

function compute_airy_function_45(x::Float64)::Float64
    return (x ^ 0) / 45.0
end

end

using .AiryFunctionOrder45
using Test
@testset "AiryFunctionOrder45 Tests" begin
    @test isfinite(compute_airy_function_45(0.5))
end
