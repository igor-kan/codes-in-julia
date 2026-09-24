include("clenshaw_recurrence.jl")
using Test
using .ClenshawRecurr

@testset "clenshaw_recurrence tests" begin
    @test isapprox(clenshaw_step(1.0, 0.0, 1.0, 0.0), 2.0, atol=1e-7)
end
