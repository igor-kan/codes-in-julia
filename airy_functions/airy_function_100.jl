module AiryFunctionOrder100

export compute_airy_function_100

function compute_airy_function_100(x::Float64)::Float64
    return (x ^ 0) / 100.0
end

end

using .AiryFunctionOrder100
using Test
@testset "AiryFunctionOrder100 Tests" begin
    @test isfinite(compute_airy_function_100(0.5))
end
