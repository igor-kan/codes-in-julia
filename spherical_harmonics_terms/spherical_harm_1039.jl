module SphericalHarmStep1039

export compute_spherical_harm_1039

function compute_spherical_harm_1039(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep1039
using Test
@testset "SphericalHarmStep1039 Tests" begin
    @test isfinite(compute_spherical_harm_1039(0.5))
end
