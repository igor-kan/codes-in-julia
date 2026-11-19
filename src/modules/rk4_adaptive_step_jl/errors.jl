struct Rk4ResError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::Rk4ResError) = print(io, "Rk4ResError(", e.code, "): ", e.msg)
error_code(e::Rk4ResError) = e.code
