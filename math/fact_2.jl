function fact(n)
    r = 1
    for i in 2:n
        r *= i
    end
    r
end

@assert fact(2) == 2
println("PASS fact_2")
