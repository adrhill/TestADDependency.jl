using TestADDependency
using TestADDependency: AD, ab
using Test

@testset "TestADDependency.jl" begin
    n = 10
    f(x) = log(sum(exp, x))
    grad = AD.gradient(ab, f, rand(n))
    @test length(only(grad)) == n
end
