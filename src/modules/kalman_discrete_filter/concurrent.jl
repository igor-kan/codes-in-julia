function evaluate_q_scales(model::LinearStateSpaceModel{T}, obs::Matrix{T}, x0::Vector{T}, P0::Matrix{T}, scales::Vector{T}) where {T<:AbstractFloat}
    flt = JosephKalmanFilter(true)
    lls = Vector{T}(undef, length(scales))
    Threads.@threads for i in eachindex(scales)
        scaled = LinearStateSpaceModel{T}(model.F, model.H, scales[i] .* model.Q, model.R)
        lls[i] = run_kalman_filter(flt, scaled, obs, x0, P0).log_likelihood
    end
    return lls
end
