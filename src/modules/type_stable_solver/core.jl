module Type_stable_solverCore

using ..Type_stable_solverTypes
export compute!

function compute!(ctx::Context, in_vec::AbstractVector{Float64}, out_vec::AbstractVector{Float64})
    @assert length(out_vec) >= length(in_vec) "Output vector capacity too small"
    @inbounds for i in eachindex(in_vec)
        x = in_vec[i]
        out_vec[i] = x * (1.0 + 0.5 * x - 0.125 * x * x)
    end
    ctx.operations_count += length(in_vec)
    return out_vec
end

end # module
