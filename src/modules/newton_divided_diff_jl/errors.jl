struct NewtonInterpError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::NewtonInterpError) = print(io, "NewtonInterpError(", e.code, "): ", e.msg)
