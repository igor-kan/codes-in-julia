function fact(n)
    r = 1
    for i in 2:n
        r *= i
    end
    r
end

@assert fact(14) == 87178291200
println("PASS fact_14")
