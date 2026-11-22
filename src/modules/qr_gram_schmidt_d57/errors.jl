struct MgsD57Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::MgsD57Error) = print(io, "MgsD57Error(", e.code, "): ", e.msg)
error_code(e::MgsD57Error) = e.code
