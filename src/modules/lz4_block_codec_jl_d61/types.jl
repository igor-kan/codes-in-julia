struct Lz4Block
    data::Vector{UInt8}
end

struct ModuleMeta_Lz4
    slug::Symbol
    version::Int
end
