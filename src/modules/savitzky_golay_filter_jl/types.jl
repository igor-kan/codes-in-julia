struct SgKernel
    half_width::Int
    degree::Int
    weights::Vector{Float64}
end
window_size(k::SgKernel) = 2 * k.half_width + 1
