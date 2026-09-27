module FourierCompTerm73

export compute_fourier_comp_term_73

function compute_fourier_comp_term_73(x::Float64)
    return (x ^ 73) / 73.0
end

end

using .FourierCompTerm73
using Test
@testset "FourierCompTerm73 Tests" begin
    @test isapprox(compute_fourier_comp_term_73(1.0), 1.0 / 73.0, atol=1e-7)
end
