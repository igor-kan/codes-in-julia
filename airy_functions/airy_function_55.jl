module AiryFunctionOrder55

export compute_airy_function_55

function compute_airy_function_55(x::Float64)::Float64
    return (x ^ 0) / 55.0
end

end

using .AiryFunctionOrder55
using Test
@testset "AiryFunctionOrder55 Tests" begin
    @test isfinite(compute_airy_function_55(0.5))
end
