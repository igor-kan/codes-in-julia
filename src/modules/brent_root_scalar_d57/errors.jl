struct SecD57Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::SecD57Error) = print(io, "SecD57Error(", e.code, "): ", e.msg)
error_code(e::SecD57Error) = e.code
