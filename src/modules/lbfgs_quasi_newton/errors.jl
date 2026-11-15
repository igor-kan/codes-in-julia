abstract type LbfgsException <: Exception end

struct LbfgsDimensionError <: LbfgsException
    msg::String
end

struct LbfgsDomainError <: LbfgsException
    msg::String
end

Base.showerror(io::IO, e::LbfgsDimensionError) = print(io, "LbfgsDimensionError: ", e.msg)
Base.showerror(io::IO, e::LbfgsDomainError) = print(io, "LbfgsDomainError: ", e.msg)
