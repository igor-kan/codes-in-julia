function fact(n)
    r = 1
    for i in 2:n
        r *= i
    end
    r
end

@assert fact(19) == 121645100408832000
println("PASS fact_19")
