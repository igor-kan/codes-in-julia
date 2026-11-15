using LinearAlgebra

function two_loop_direction(
    g::Vector{T},
    s_hist::Vector{Vector{T}},
    y_hist::Vector{Vector{T}},
    rho_hist::Vector{T},
) where {T<:AbstractFloat}
    q = copy(g)
    m = length(s_hist)
    alphas = zeros(T, m)
    for i in m:-1:1
        alphas[i] = rho_hist[i] * dot(s_hist[i], q)
        @. q = q - alphas[i] * y_hist[i]
    end
    gamma = m > 0 ? dot(s_hist[end], y_hist[end]) / dot(y_hist[end], y_hist[end]) : one(T)
    r = gamma .* q
    for i in 1:m
        beta = rho_hist[i] * dot(y_hist[i], r)
        @. r = r + (alphas[i] - beta) * s_hist[i]
    end
    return -r
end

function minimize_smooth(
    solver::LbfgsSolver,
    fg!,
    x0::Vector{T},
    cfg::LbfgsConfig{T} = LbfgsConfig(),
) where {T<:AbstractFloat}
    validate_lbfgs_inputs(x0, cfg)
    x = copy(x0)
    n = length(x)
    g = zeros(T, n)
    g_new = zeros(T, n)
    s_hist = Vector{Vector{T}}()
    y_hist = Vector{Vector{T}}()
    rho_hist = Vector{T}()
    fx = fg!(g, x)
    converged = false
    iters = 0
    for k in 1:cfg.max_iter
        gnorm = norm(g)
        iters = k
        if gnorm <= cfg.tol
            converged = true
            break
        end
        d = two_loop_direction(g, s_hist, y_hist, rho_hist)
        slope = dot(g, d)
        alpha = one(T)
        x_try = similar(x)
        f_try = fx
        for _ in 1:40
            @. x_try = x + alpha * d
            f_try = fg!(g_new, x_try)
            if f_try <= fx + cfg.c1_armijo * alpha * slope
                break
            end
            alpha *= T(0.5)
        end
        s = x_try .- x
        y = g_new .- g
        sy = dot(s, y)
        if sy > T(1e-12) * norm(s) * norm(y)
            if length(s_hist) >= cfg.history
                popfirst!(s_hist); popfirst!(y_hist); popfirst!(rho_hist)
            end
            push!(s_hist, s); push!(y_hist, y); push!(rho_hist, one(T) / sy)
        end
        x .= x_try
        g .= g_new
        fx = f_try
    end
    return LbfgsResult{T}(x, fx, norm(g), iters, converged)
end
