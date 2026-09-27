module HarmonicSeriesTerm106

export compute_harmonic_series_term_106

function compute_harmonic_series_term_106(x::Float64)
    return (x ^ 106) / 106.0
end

end

using .HarmonicSeriesTerm106
using Test
@testset "HarmonicSeriesTerm106 Tests" begin
    @test isapprox(compute_harmonic_series_term_106(1.0), 1.0 / 106.0, atol=1e-7)
end
