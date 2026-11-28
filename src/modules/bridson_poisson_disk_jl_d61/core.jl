import Random

function bridson_poisson_disk(width::Float64, height::Float64, radius::Float64; k::Int = 30, seed::Int = 12345)
    rng = Random.MersenneTwister(seed)
    cell = radius / sqrt(2.0)
    gw = max(1, ceil(Int, width / cell))
    gh = max(1, ceil(Int, height / cell))
    grid = [Int[] for _ in 1:gw, _ in 1:gh]
    pts = NTuple{2, Float64}[]
    function cell_of(x::Float64, y::Float64)
        ci = clamp(floor(Int, x / cell) + 1, 1, gw)
        cj = clamp(floor(Int, y / cell) + 1, 1, gh)
        return (ci, cj)
    end
    function no_neighbor(x::Float64, y::Float64)
        ci, cj = cell_of(x, y)
        r2 = radius * radius
        for di in -2:2
            for dj in -2:2
                ii = ci + di
                jj = cj + dj
                (1 <= ii <= gw && 1 <= jj <= gh) || continue
                for idx in grid[ii, jj]
                    dx = pts[idx][1] - x
                    dy = pts[idx][2] - y
                    dx * dx + dy * dy < r2 && return false
                end
            end
        end
        return true
    end
    start = (rand(rng) * width, rand(rng) * height)
    push!(pts, start)
    ci, cj = cell_of(start[1], start[2])
    push!(grid[ci, cj], 1)
    active = [1]
    while !isempty(active)
        pick = rand(rng, 1:length(active))
        px, py = pts[active[pick]]
        accepted = false
        for _ in 1:k
            angle = 2.0 * pi * rand(rng)
            step = radius * (1.0 + rand(rng))
            nx = px + step * cos(angle)
            ny = py + step * sin(angle)
            (0.0 <= nx < width && 0.0 <= ny < height) || continue
            if no_neighbor(nx, ny)
                push!(pts, (nx, ny))
                gi, gj = cell_of(nx, ny)
                push!(grid[gi, gj], length(pts))
                push!(active, length(pts))
                accepted = true
                break
            end
        end
        accepted || deleteat!(active, pick)
    end
    return DiskSample(pts, radius)
end
