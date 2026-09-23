function fact(n)
    r = 1
    for i in 2:n
        r *= i
    end
    r
end

@assert fact(13) == 6227020800
println("PASS fact_13")
