function fact(n)
    r = 1
    for i in 2:n
        r *= i
    end
    r
end

@assert fact(11) == 39916800
println("PASS fact_11")
