function batch_solve_pcg(A::Matrix{T}, B::Matrix{T}, cfg::CgConfig{T}) where {T<:AbstractFloat}
    solver = JacobiCgSolver(true)
    k = size(B, 2)
    sols = Vector{CgSolution{T}}(undef, k)
    Threads.@threads for j in 1:k
        sols[j] = solve_pcg(solver, A, B[:, j], cfg)
    end
    return sols
end
