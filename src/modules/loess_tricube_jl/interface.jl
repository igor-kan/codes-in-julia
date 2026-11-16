abstract type AbstractLocalSmoother end

struct TricubeLoess <: AbstractLocalSmoother
    degree::Int
end

TricubeLoess() = TricubeLoess(1)

function fit_predict_loess end
function tricube_kernel end
