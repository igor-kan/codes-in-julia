module HarmonicSeriesTerm101

export compute_harmonic_series_term_101

function compute_harmonic_series_term_101(x::Float64)
    return (x ^ 101) / 101.0
end

end

using .HarmonicSeriesTerm101
using Test
@testset "HarmonicSeriesTerm101 Tests" begin
    @test isapprox(compute_harmonic_series_term_101(1.0), 1.0 / 101.0, atol=1e-7)
end
