abstract type LevinsonException <: Exception end

struct LevinsonDimensionError <: LevinsonException
    msg::String
end

struct LevinsonDomainError <: LevinsonException
    msg::String
end

Base.showerror(io::IO, e::LevinsonDimensionError) = print(io, "LevinsonDimensionError: ", e.msg)
Base.showerror(io::IO, e::LevinsonDomainError) = print(io, "LevinsonDomainError: ", e.msg)
