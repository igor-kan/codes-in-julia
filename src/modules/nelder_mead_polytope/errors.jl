abstract type NmException <: Exception end

struct NmDimensionError <: NmException
    msg::String
end

struct NmDomainError <: NmException
    msg::String
end

Base.showerror(io::IO, e::NmDimensionError) = print(io, "NmDimensionError: ", e.msg)
Base.showerror(io::IO, e::NmDomainError) = print(io, "NmDomainError: ", e.msg)
