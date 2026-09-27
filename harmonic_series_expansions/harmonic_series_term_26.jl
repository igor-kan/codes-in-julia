module HarmonicSeriesTerm26

export compute_harmonic_series_term_26

function compute_harmonic_series_term_26(x::Float64)
    return (x ^ 26) / 26.0
end

end

using .HarmonicSeriesTerm26
using Test
@testset "HarmonicSeriesTerm26 Tests" begin
    @test isapprox(compute_harmonic_series_term_26(1.0), 1.0 / 26.0, atol=1e-7)
end
