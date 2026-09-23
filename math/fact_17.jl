function fact(n)
    r = 1
    for i in 2:n
        r *= i
    end
    r
end

@assert fact(17) == 355687428096000
println("PASS fact_17")
