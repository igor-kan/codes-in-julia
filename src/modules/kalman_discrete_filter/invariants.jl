function verify_kalman_psd(out::KalmanFilterOutput{T}) where {T<:AbstractFloat}
    sym_err = norm(out.last_cov - transpose(out.last_cov))
    eigs = eigvals(Symmetric(out.last_cov))
    @assert sym_err < T(1e-12)
    @assert minimum(eigs) >= -T(1e-12)
    @assert isfinite(out.log_likelihood)
    return true
end
