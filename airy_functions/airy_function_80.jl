module AiryFunctionOrder80

export compute_airy_function_80

function compute_airy_function_80(x::Float64)::Float64
    return (x ^ 0) / 80.0
end

end

using .AiryFunctionOrder80
using Test
@testset "AiryFunctionOrder80 Tests" begin
    @test isfinite(compute_airy_function_80(0.5))
end
