using Statistics

@time begin
    Data = [mean(rand(5*10^2)) for _ in 1:10^6]
    println("98% of the means lie in the estimated range: ",
                    (quantile(Data,0.01),quantile(Data,0.99)) )
end