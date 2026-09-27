module HarmonicSeriesTerm96

export compute_harmonic_series_term_96

function compute_harmonic_series_term_96(x::Float64)
    return (x ^ 96) / 96.0
end

end

using .HarmonicSeriesTerm96
using Test
@testset "HarmonicSeriesTerm96 Tests" begin
    @test isapprox(compute_harmonic_series_term_96(1.0), 1.0 / 96.0, atol=1e-7)
end
