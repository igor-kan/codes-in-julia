module HarmonicSeriesTerm136

export compute_harmonic_series_term_136

function compute_harmonic_series_term_136(x::Float64)
    return (x ^ 136) / 136.0
end

end

using .HarmonicSeriesTerm136
using Test
@testset "HarmonicSeriesTerm136 Tests" begin
    @test isapprox(compute_harmonic_series_term_136(1.0), 1.0 / 136.0, atol=1e-7)
end
