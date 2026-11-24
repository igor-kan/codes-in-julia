struct Svd2D59Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::Svd2D59Error) = print(io, "Svd2D59Error(", e.code, "): ", e.msg)
error_code(e::Svd2D59Error) = e.code
