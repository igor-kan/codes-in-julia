abstract type BrentException <: Exception end

struct BrentDimensionError <: BrentException
    msg::String
end

struct BrentDomainError <: BrentException
    msg::String
end

Base.showerror(io::IO, e::BrentDimensionError) = print(io, "BrentDimensionError: ", e.msg)
Base.showerror(io::IO, e::BrentDomainError) = print(io, "BrentDomainError: ", e.msg)
