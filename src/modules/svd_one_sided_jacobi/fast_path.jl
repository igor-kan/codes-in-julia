function reconstruct_svd(svd_res::JacobiSvd{T}) where {T<:AbstractFloat}
    scaled = svd_res.U * Diagonal(svd_res.S)
    return scaled * transpose(svd_res.V)
end

function nuclear_norm(svd_res::JacobiSvd{T}) where {T<:AbstractFloat}
    return sum(svd_res.S)
end
