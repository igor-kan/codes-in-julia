struct Svd2ResError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::Svd2ResError) = print(io, "Svd2ResError(", e.code, "): ", e.msg)
error_code(e::Svd2ResError) = e.code
