struct GnD57Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::GnD57Error) = print(io, "GnD57Error(", e.code, "): ", e.msg)
error_code(e::GnD57Error) = e.code
