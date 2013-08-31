using Base.Test
require("src/Diff.jl")

test_type = length(ARGS) == 1 ? ARGS[1] : "ALL"

s1 = "bjuclgiah iks apwecsogmbe ahndk fapst."
s2 = "qjurlviax iyszz zaweqsormev axndy fzaqstr."



methods(Diff.one_of_the_lcs)

if test_type == "ALL" || test_type == "TEST" || test_type == "INSTALL"
  @test Diff.one_of_the_lcs([0,1,2,3,4,5], [2,3,5,7,11]) == [2,3,5]
  @test Diff.one_of_the_lcs(s1, s2) ==  "julia is awesome and fast."
  @test Diff.one_of_the_lcs([0:7:500],[0:11:500]) == [0:7*11:500]
end

if test_type == "ALL" || test_type == "PERF"
  x = 0
  s1l = repeat(s1,700)
  s2l = repeat(s2,700)
  @time Diff.one_of_the_lcs(s1l, s2l)
end
