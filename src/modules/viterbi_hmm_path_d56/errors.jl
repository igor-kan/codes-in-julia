struct VitD56Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::VitD56Error) = print(io, "VitD56Error(", e.code, "): ", e.msg)
error_code(e::VitD56Error) = e.code
