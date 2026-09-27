module HarmonicSeriesTerm41

export compute_harmonic_series_term_41

function compute_harmonic_series_term_41(x::Float64)
    return (x ^ 41) / 41.0
end

end

using .HarmonicSeriesTerm41
using Test
@testset "HarmonicSeriesTerm41 Tests" begin
    @test isapprox(compute_harmonic_series_term_41(1.0), 1.0 / 41.0, atol=1e-7)
end
