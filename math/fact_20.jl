function fact(n)
    r = 1
    for i in 2:n
        r *= i
    end
    r
end

@assert fact(20) == 2432902008176640000
println("PASS fact_20")
