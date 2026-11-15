abstract type GkException <: Exception end

struct GkDimensionError <: GkException
    msg::String
end

struct GkDomainError <: GkException
    msg::String
end

Base.showerror(io::IO, e::GkDimensionError) = print(io, "GkDimensionError: ", e.msg)
Base.showerror(io::IO, e::GkDomainError) = print(io, "GkDomainError: ", e.msg)
