abstract type BidiagException <: Exception end

struct BidiagDimensionError <: BidiagException
    msg::String
end

struct BidiagDomainError <: BidiagException
    msg::String
end

Base.showerror(io::IO, e::BidiagDimensionError) = print(io, "BidiagDimensionError: ", e.msg)
Base.showerror(io::IO, e::BidiagDomainError) = print(io, "BidiagDomainError: ", e.msg)
