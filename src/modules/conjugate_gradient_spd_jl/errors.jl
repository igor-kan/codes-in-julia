struct CgSpdError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::CgSpdError) = print(io, "CgSpdError(", e.code, "): ", e.msg)
error_code(e::CgSpdError) = e.code
