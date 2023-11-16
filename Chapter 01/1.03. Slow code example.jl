using Statistics

@time begin
    Data = Float64[]
    for _ in 1:10^6
        group = Float64[]
        for _ in 1:5*10^2
            push!(group,rand())
        end
        push!(Data,mean(group))
    end
    println("98% of the means lie in the estimated range: ",
                (quantile(Data,0.01),quantile(Data,0.99)) )
end