abstract type BluesteinException <: Exception end

struct BluesteinDimensionError <: BluesteinException
    msg::String
end

struct BluesteinDomainError <: BluesteinException
    msg::String
end

Base.showerror(io::IO, e::BluesteinDimensionError) = print(io, "BluesteinDimensionError: ", e.msg)
Base.showerror(io::IO, e::BluesteinDomainError) = print(io, "BluesteinDomainError: ", e.msg)
