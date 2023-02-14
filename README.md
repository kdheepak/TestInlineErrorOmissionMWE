# TestInlineErrorOmissionMWE

`main1()`:

```julia
$ julia --project -e 'using TestInlineErrorOmissionMWE; TestInlineErrorOmissionMWE.main1()'
ERROR: "group/x1 not found"
Stacktrace:
 [1] ReadDataSetFromHDF5(name::String)
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:2
 [2] main1()
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:4
 [3] top-level scope
   @ none:1
```

`main2()`:

```julia
$ julia --project -e 'using TestInlineErrorOmissionMWE; TestInlineErrorOmissionMWE.main2()'
ERROR: "group/x1 not found"
Stacktrace:
 [1] ReadDataSetFromHDF5(name::String)
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:2
 [2] TestInlineErrorOmissionMWE.Data()
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\data.jl:5
 [3] main2()
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:6
 [4] top-level scope
   @ none:1
```
