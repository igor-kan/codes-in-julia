abstract type AbstractScalarRootFinder end

struct BrentSolver <: AbstractScalarRootFinder
    enforce_bracket::Bool
end

BrentSolver() = BrentSolver(true)

function find_root end
function validate_bracket end
