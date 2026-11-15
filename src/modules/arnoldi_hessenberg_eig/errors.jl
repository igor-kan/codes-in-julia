abstract type ArnoldiException <: Exception end

struct ArnoldiDimensionError <: ArnoldiException
    msg::String
end

struct ArnoldiDomainError <: ArnoldiException
    msg::String
end

Base.showerror(io::IO, e::ArnoldiDimensionError) = print(io, "ArnoldiDimensionError: ", e.msg)
Base.showerror(io::IO, e::ArnoldiDomainError) = print(io, "ArnoldiDomainError: ", e.msg)
