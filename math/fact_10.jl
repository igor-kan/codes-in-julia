function fact(n)
    r = 1
    for i in 2:n
        r *= i
    end
    r
end

@assert fact(10) == 3628800
println("PASS fact_10")
