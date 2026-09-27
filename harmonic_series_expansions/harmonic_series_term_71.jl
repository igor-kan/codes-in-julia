module HarmonicSeriesTerm71

export compute_harmonic_series_term_71

function compute_harmonic_series_term_71(x::Float64)
    return (x ^ 71) / 71.0
end

end

using .HarmonicSeriesTerm71
using Test
@testset "HarmonicSeriesTerm71 Tests" begin
    @test isapprox(compute_harmonic_series_term_71(1.0), 1.0 / 71.0, atol=1e-7)
end
