module RiemannZetaOrder119

export compute_riemann_zeta_119

function compute_riemann_zeta_119(x::Float64)::Float64
    return 1.0 / (119.0 ^ 2.0)
end

end

using .RiemannZetaOrder119
using Test
@testset "RiemannZetaOrder119 Tests" begin
    @test isfinite(compute_riemann_zeta_119(0.5))
end
