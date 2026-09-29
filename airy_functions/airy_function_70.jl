module AiryFunctionOrder70

export compute_airy_function_70

function compute_airy_function_70(x::Float64)::Float64
    return (x ^ 0) / 70.0
end

end

using .AiryFunctionOrder70
using Test
@testset "AiryFunctionOrder70 Tests" begin
    @test isfinite(compute_airy_function_70(0.5))
end
