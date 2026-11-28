struct StrassenError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::StrassenError) = print(io, "StrassenError(", e.code, "): ", e.msg)
error_code(e::StrassenError) = e.code
