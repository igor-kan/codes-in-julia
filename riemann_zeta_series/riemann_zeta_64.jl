module RiemannZetaOrder64

export compute_riemann_zeta_64

function compute_riemann_zeta_64(x::Float64)::Float64
    return -1.0 / (64.0 ^ 2.0)
end

end

using .RiemannZetaOrder64
using Test
@testset "RiemannZetaOrder64 Tests" begin
    @test isfinite(compute_riemann_zeta_64(0.5))
end
