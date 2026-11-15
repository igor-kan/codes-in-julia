abstract type SvdException <: Exception end

struct SvdDimensionError <: SvdException
    msg::String
end

struct SvdDomainError <: SvdException
    msg::String
end

Base.showerror(io::IO, e::SvdDimensionError) = print(io, "SvdDimensionError: ", e.msg)
Base.showerror(io::IO, e::SvdDomainError) = print(io, "SvdDomainError: ", e.msg)
