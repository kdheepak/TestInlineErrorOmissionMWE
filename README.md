# TestInlineErrorOmissionMWE

`main1()`:

```julia
$ julia --project -e 'using TestInlineErrorOmissionMWE; TestInlineErrorOmissionMWE.main1()'
ERROR: "x1 not found"
Stacktrace:
 [1] default_value(name::String)
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:2
 [2] main1()
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:4
 [3] top-level scope
   @ none:1
```

`main2()`:

```julia
$ julia --project -e 'using TestInlineErrorOmissionMWE; TestInlineErrorOmissionMWE.main2()'
ERROR: "x1 not found"
Stacktrace:
 [1] default_value(name::String)
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:2
 [2] TestInlineErrorOmissionMWE.Data()
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\data.jl:5
 [3] main2()
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:6
 [4] top-level scope
   @ none:1
```

`main1()` is missing the stackframe that calls into the `src\data.jl`'s `Data` struct, i.e. this line:

```julia
 [2] TestInlineErrorOmissionMWE.Data()
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\data.jl:5
```

is present in `main2()` but not in `main1()`.

`main1()` and `main2()` are defined like this:

```julia
main1() = (; data1=Data(; year=1))

main2() = (; data1=Data())
```
