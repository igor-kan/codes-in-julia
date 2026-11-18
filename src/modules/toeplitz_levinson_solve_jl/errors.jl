struct ToeplitzLevError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::ToeplitzLevError) = print(io, "ToeplitzLevError(", e.code, "): ", e.msg)
error_code(e::ToeplitzLevError) = e.code
