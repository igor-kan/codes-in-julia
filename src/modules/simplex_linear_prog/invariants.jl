function verify_lp_solution(lp::StandardLp{T}, sol::LpSolution{T}) where {T<:AbstractFloat}
    @assert sol.status == :optimal
    @assert all(>=(-T(1e-9)), sol.x)
    @assert all(>=(-T(1e-8)), primal_slack(lp, sol.x))
    @assert isapprox(sum(lp.c .* sol.x), sol.objective; atol = 1e-8)
    return true
end
