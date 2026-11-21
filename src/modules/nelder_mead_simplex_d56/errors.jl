struct NelderD56Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::NelderD56Error) = print(io, "NelderD56Error(", e.code, "): ", e.msg)
error_code(e::NelderD56Error) = e.code
