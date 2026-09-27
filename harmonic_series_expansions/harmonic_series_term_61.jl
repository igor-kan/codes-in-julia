module HarmonicSeriesTerm61

export compute_harmonic_series_term_61

function compute_harmonic_series_term_61(x::Float64)
    return (x ^ 61) / 61.0
end

end

using .HarmonicSeriesTerm61
using Test
@testset "HarmonicSeriesTerm61 Tests" begin
    @test isapprox(compute_harmonic_series_term_61(1.0), 1.0 / 61.0, atol=1e-7)
end
