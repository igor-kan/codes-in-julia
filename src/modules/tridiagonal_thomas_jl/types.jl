struct TridiagSystem{T<:AbstractFloat}
    dl::Vector{T}
    d::Vector{T}
    du::Vector{T}
end
sys_dim(s::TridiagSystem) = length(s.d)
