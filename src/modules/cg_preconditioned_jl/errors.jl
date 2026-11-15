abstract type CgException <: Exception end

struct CgDimensionError <: CgException
    msg::String
end

struct CgDomainError <: CgException
    msg::String
end

Base.showerror(io::IO, e::CgDimensionError) = print(io, "CgDimensionError: ", e.msg)
Base.showerror(io::IO, e::CgDomainError) = print(io, "CgDomainError: ", e.msg)
