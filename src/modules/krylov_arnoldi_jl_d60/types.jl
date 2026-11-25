struct ArnoldiFact
    q::Matrix{Float64}
    h::Matrix{Float64}
    steps::Int
end

struct ModuleMeta_Arnoldi
    slug::Symbol
    version::Int
end
