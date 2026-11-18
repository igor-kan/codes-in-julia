struct QrFactors
    Q::Matrix{Float64}
    R::Matrix{Float64}
end

struct ModuleMeta_MgsQr
    slug::Symbol
    version::Int
end
