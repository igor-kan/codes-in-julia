module FourierCompTerm113

export compute_fourier_comp_term_113

function compute_fourier_comp_term_113(x::Float64)
    return (x ^ 113) / 113.0
end

end

using .FourierCompTerm113
using Test
@testset "FourierCompTerm113 Tests" begin
    @test isapprox(compute_fourier_comp_term_113(1.0), 1.0 / 113.0, atol=1e-7)
end
