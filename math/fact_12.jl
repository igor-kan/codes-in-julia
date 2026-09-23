function fact(n)
    r = 1
    for i in 2:n
        r *= i
    end
    r
end

@assert fact(12) == 479001600
println("PASS fact_12")
