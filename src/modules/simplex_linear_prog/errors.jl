abstract type SimplexException <: Exception end

struct SimplexDimensionError <: SimplexException
    msg::String
end

struct SimplexDomainError <: SimplexException
    msg::String
end

Base.showerror(io::IO, e::SimplexDimensionError) = print(io, "SimplexDimensionError: ", e.msg)
Base.showerror(io::IO, e::SimplexDomainError) = print(io, "SimplexDomainError: ", e.msg)
