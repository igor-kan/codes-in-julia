abstract type KalmanException <: Exception end

struct KalmanDimensionError <: KalmanException
    msg::String
end

struct KalmanDomainError <: KalmanException
    msg::String
end

Base.showerror(io::IO, e::KalmanDimensionError) = print(io, "KalmanDimensionError: ", e.msg)
Base.showerror(io::IO, e::KalmanDomainError) = print(io, "KalmanDomainError: ", e.msg)
