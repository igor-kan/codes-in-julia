module HarmonicSeriesTerm66

export compute_harmonic_series_term_66

function compute_harmonic_series_term_66(x::Float64)
    return (x ^ 66) / 66.0
end

end

using .HarmonicSeriesTerm66
using Test
@testset "HarmonicSeriesTerm66 Tests" begin
    @test isapprox(compute_harmonic_series_term_66(1.0), 1.0 / 66.0, atol=1e-7)
end
