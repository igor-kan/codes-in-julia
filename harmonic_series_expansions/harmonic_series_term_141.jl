module HarmonicSeriesTerm141

export compute_harmonic_series_term_141

function compute_harmonic_series_term_141(x::Float64)
    return (x ^ 141) / 141.0
end

end

using .HarmonicSeriesTerm141
using Test
@testset "HarmonicSeriesTerm141 Tests" begin
    @test isapprox(compute_harmonic_series_term_141(1.0), 1.0 / 141.0, atol=1e-7)
end
