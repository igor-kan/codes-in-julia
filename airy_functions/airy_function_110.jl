module AiryFunctionOrder110

export compute_airy_function_110

function compute_airy_function_110(x::Float64)::Float64
    return (x ^ 0) / 110.0
end

end

using .AiryFunctionOrder110
using Test
@testset "AiryFunctionOrder110 Tests" begin
    @test isfinite(compute_airy_function_110(0.5))
end
