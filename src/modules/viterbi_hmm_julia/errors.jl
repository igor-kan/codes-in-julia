abstract type HmmException <: Exception end

struct HmmDimensionError <: HmmException
    msg::String
end

struct HmmDomainError <: HmmException
    msg::String
end

Base.showerror(io::IO, e::HmmDimensionError) = print(io, "HmmDimensionError: ", e.msg)
Base.showerror(io::IO, e::HmmDomainError) = print(io, "HmmDomainError: ", e.msg)
