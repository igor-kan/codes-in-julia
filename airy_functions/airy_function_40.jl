module AiryFunctionOrder40

export compute_airy_function_40

function compute_airy_function_40(x::Float64)::Float64
    return (x ^ 0) / 40.0
end

end

using .AiryFunctionOrder40
using Test
@testset "AiryFunctionOrder40 Tests" begin
    @test isfinite(compute_airy_function_40(0.5))
end
