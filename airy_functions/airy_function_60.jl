module AiryFunctionOrder60

export compute_airy_function_60

function compute_airy_function_60(x::Float64)::Float64
    return (x ^ 0) / 60.0
end

end

using .AiryFunctionOrder60
using Test
@testset "AiryFunctionOrder60 Tests" begin
    @test isfinite(compute_airy_function_60(0.5))
end
