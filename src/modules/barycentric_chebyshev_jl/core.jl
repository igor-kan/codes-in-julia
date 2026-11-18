function cheb_mesh(n::Int)
    nodes = [cos(j * pi / n) for j in 0:n]
    w = [((j % 2 == 0) ? 1.0 : -1.0) * ((j == 0 || j == n) ? 0.5 : 1.0) for j in 0:n]
    return ChebNodeMesh(nodes, w)
end

function eval_bary_cheb(mesh::ChebNodeMesh, vals::Vector{Float64}, x::Float64)
    for i in eachindex(mesh.nodes)
        abs(x - mesh.nodes[i]) < 1e-14 && return vals[i]
    end
    num = 0.0; den = 0.0
    for i in eachindex(mesh.nodes)
        t = mesh.weights[i] / (x - mesh.nodes[i])
        num += t * vals[i]; den += t
    end
    return num / den
end
