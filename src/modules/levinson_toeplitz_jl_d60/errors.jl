struct LevinsonError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::LevinsonError) = print(io, "LevinsonError(", e.code, "): ", e.msg)
error_code(e::LevinsonError) = e.code
