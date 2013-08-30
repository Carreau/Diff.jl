[![Build Status](https://travis-ci.org/Carreau/Diff.jl.png)](https://travis-ci.org/Carreau/Diff.jl)

## Diff.jl

Diff-Like utility for Julia.

Contain some basic example of computing longuest common **subsequences** and alike problem
using julia.

Try to not assume item in sequences are strings

basic usage : 


```julia
> require("Diff")
> s1 = "bjuclgiah iks apwecsogmbe ahndk fapst."
> s2 = "qjurlviax iyszz zaweqsormev axndy fzaqstr."

> Diff.one_of_the_lcs(s1, s2)
"julia is awesome and fast."

> Diff.edit_distance(s1,s2)
26

> Diff.one_of_the_lcs([0:7:500],[0:11:500])
7-element Array{Int64,1}:
   0
  77
 154
 231
 308
 385
 462
```
