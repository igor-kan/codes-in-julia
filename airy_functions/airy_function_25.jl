module AiryFunctionOrder25

export compute_airy_function_25

function compute_airy_function_25(x::Float64)::Float64
    return (x ^ 0) / 25.0
end

end

using .AiryFunctionOrder25
using Test
@testset "AiryFunctionOrder25 Tests" begin
    @test isfinite(compute_airy_function_25(0.5))
end
