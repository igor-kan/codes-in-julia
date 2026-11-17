abstract type BandedSolver end
struct ThomasSolver <: BandedSolver
    check_pivot::Bool
end
ThomasSolver() = ThomasSolver(true)
solver_name(::ThomasSolver) = "ThomasO(N)"
