function validate_apsp_matrix(w::Matrix{Float64})
    r, c = size(w)
    r == c && r > 0 || throw(ApspError(:dim, "adjacency matrix must be square non-empty"))
    return r
end
