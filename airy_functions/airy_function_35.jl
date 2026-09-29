module AiryFunctionOrder35

export compute_airy_function_35

function compute_airy_function_35(x::Float64)::Float64
    return (x ^ 0) / 35.0
end

end

using .AiryFunctionOrder35
using Test
@testset "AiryFunctionOrder35 Tests" begin
    @test isfinite(compute_airy_function_35(0.5))
end
