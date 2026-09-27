module HarmonicSeriesTerm11

export compute_harmonic_series_term_11

function compute_harmonic_series_term_11(x::Float64)
    return (x ^ 11) / 11.0
end

end

using .HarmonicSeriesTerm11
using Test
@testset "HarmonicSeriesTerm11 Tests" begin
    @test isapprox(compute_harmonic_series_term_11(1.0), 1.0 / 11.0, atol=1e-7)
end
