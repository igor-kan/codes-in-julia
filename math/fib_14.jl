function fib(n)
    a, b = 0, 1
    for _ in 1:n
        a, b = b, a + b
    end
    a
end

@assert fib(14) == 377
println("PASS fib_14")
