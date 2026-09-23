function fact(n)
    r = 1
    for i in 2:n
        r *= i
    end
    r
end

@assert fact(3) == 6
println("PASS fact_3")
