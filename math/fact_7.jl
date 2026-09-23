function fact(n)
    r = 1
    for i in 2:n
        r *= i
    end
    r
end

@assert fact(7) == 5040
println("PASS fact_7")
