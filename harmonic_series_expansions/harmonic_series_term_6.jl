module HarmonicSeriesTerm6

export compute_harmonic_series_term_6

function compute_harmonic_series_term_6(x::Float64)
    return (x ^ 6) / 6.0
end

end

using .HarmonicSeriesTerm6
using Test
@testset "HarmonicSeriesTerm6 Tests" begin
    @test isapprox(compute_harmonic_series_term_6(1.0), 1.0 / 6.0, atol=1e-7)
end
