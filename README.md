# TestInlineErrorOmissionMWE

`main.jl`

```julia
# src/main.jl
default_value() = throw("oh no")

main1() = foo(; kwarg_not_used=1)
main2() = foo()
```

`foo.jl`

```julia
# src/foo.jl
foo(; x1=default_value()) = nothing
```

Stacktrace:

```julia
$ julia --project -e 'using TestInlineErrorOmissionMWE; TestInlineErrorOmissionMWE.main1()'
ERROR: "oh no"
Stacktrace:
 [1] default_value()
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:2
 [2] main1()
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:4
 [3] top-level scope
   @ none:1

$ julia --project -e 'using TestInlineErrorOmissionMWE; TestInlineErrorOmissionMWE.main2()'
ERROR: "oh no"
Stacktrace:
 [1] default_value()
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:2
 [2] foo()
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\foo.jl:1
 [3] main2()
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:6
 [4] top-level scope
   @ none:1
```
