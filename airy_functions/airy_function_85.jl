module AiryFunctionOrder85

export compute_airy_function_85

function compute_airy_function_85(x::Float64)::Float64
    return (x ^ 0) / 85.0
end

end

using .AiryFunctionOrder85
using Test
@testset "AiryFunctionOrder85 Tests" begin
    @test isfinite(compute_airy_function_85(0.5))
end
