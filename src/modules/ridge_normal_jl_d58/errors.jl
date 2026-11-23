struct RidgeD58Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::RidgeD58Error) = print(io, "RidgeD58Error(", e.code, "): ", e.msg)
error_code(e::RidgeD58Error) = e.code
