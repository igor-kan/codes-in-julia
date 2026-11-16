abstract type LoessException <: Exception end

struct LoessDimensionError <: LoessException
    msg::String
end

struct LoessDomainError <: LoessException
    msg::String
end

Base.showerror(io::IO, e::LoessDimensionError) = print(io, "LoessDimensionError: ", e.msg)
Base.showerror(io::IO, e::LoessDomainError) = print(io, "LoessDomainError: ", e.msg)
