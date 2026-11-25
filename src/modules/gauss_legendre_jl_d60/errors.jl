struct GaussLegError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::GaussLegError) = print(io, "GaussLegError(", e.code, "): ", e.msg)
error_code(e::GaussLegError) = e.code
