abstract type PolyInterpolator end
struct NewtonMethod <: PolyInterpolator
    strict_distinct::Bool
end
NewtonMethod() = NewtonMethod(true)
method_name(::NewtonMethod) = "NewtonDividedDiff"
