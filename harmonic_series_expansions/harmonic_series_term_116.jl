module HarmonicSeriesTerm116

export compute_harmonic_series_term_116

function compute_harmonic_series_term_116(x::Float64)
    return (x ^ 116) / 116.0
end

end

using .HarmonicSeriesTerm116
using Test
@testset "HarmonicSeriesTerm116 Tests" begin
    @test isapprox(compute_harmonic_series_term_116(1.0), 1.0 / 116.0, atol=1e-7)
end
