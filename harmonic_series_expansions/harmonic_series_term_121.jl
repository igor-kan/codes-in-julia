module HarmonicSeriesTerm121

export compute_harmonic_series_term_121

function compute_harmonic_series_term_121(x::Float64)
    return (x ^ 121) / 121.0
end

end

using .HarmonicSeriesTerm121
using Test
@testset "HarmonicSeriesTerm121 Tests" begin
    @test isapprox(compute_harmonic_series_term_121(1.0), 1.0 / 121.0, atol=1e-7)
end
