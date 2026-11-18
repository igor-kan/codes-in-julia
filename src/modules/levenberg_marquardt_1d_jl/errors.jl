struct LmOptError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::LmOptError) = print(io, "LmOptError(", e.code, "): ", e.msg)
error_code(e::LmOptError) = e.code
