struct SplD57Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::SplD57Error) = print(io, "SplD57Error(", e.code, "): ", e.msg)
error_code(e::SplD57Error) = e.code
