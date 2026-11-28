struct BridsonError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::BridsonError) = print(io, "BridsonError(", e.code, "): ", e.msg)
error_code(e::BridsonError) = e.code
