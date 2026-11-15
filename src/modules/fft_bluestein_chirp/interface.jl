abstract type AbstractArbitraryDft end

struct BluesteinDft <: AbstractArbitraryDft
    normalize_inverse::Bool
end

function build_bluestein_plan end
function execute_bluestein end
