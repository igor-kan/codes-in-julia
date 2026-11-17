abstract type SmoothingFilter end
struct SavitzkyGolay <: SmoothingFilter
    half_width::Int
    degree::Int
end