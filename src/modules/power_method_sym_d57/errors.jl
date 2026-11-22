struct PowSymD57Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::PowSymD57Error) = print(io, "PowSymD57Error(", e.code, "): ", e.msg)
error_code(e::PowSymD57Error) = e.code
