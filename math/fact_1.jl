function fact(n)
    r = 1
    for i in 2:n
        r *= i
    end
    r
end

@assert fact(1) == 1
println("PASS fact_1")
