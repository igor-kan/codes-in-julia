struct ApspMatrix
    dist::Matrix{Float64}
    next_hop::Matrix{Int}
end
vertex_count(m::ApspMatrix) = size(m.dist, 1)
