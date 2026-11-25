struct ArnoldiError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::ArnoldiError) = print(io, "ArnoldiError(", e.code, "): ", e.msg)
error_code(e::ArnoldiError) = e.code
