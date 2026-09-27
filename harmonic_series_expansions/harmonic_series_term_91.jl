module HarmonicSeriesTerm91

export compute_harmonic_series_term_91

function compute_harmonic_series_term_91(x::Float64)
    return (x ^ 91) / 91.0
end

end

using .HarmonicSeriesTerm91
using Test
@testset "HarmonicSeriesTerm91 Tests" begin
    @test isapprox(compute_harmonic_series_term_91(1.0), 1.0 / 91.0, atol=1e-7)
end
