# TestInlineErrorOmissionMWE

`main1()`:

```julia
$ julia --project -e 'using TestInlineErrorOmissionMWE; TestInlineErrorOmissionMWE.main1()'
ERROR: "group/x1 not found"
Stacktrace:
 [1] ReadDataSetFromHDF5
   @ C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\core.jl:3 [inlined]
 [2] create_data1(year::Int64)
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:1
 [3] main1
   @ C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:6 [inlined]
 [4] main1()
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:5
 [5] top-level scope
   @ none:1
```

`main2()`:

```julia
$ julia --project -e 'using TestInlineErrorOmissionMWE; TestInlineErrorOmissionMWE.main2()'
ERROR: "group/x1 not found"
Stacktrace:
 [1] ReadDataSetFromHDF5
   @ C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\core.jl:3 [inlined]
 [2] TestInlineErrorOmissionMWE.Data()
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\data.jl:5
 [3] create_data2(year::Int64)
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:2
 [4] main2
   @ C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:12 [inlined]
 [5] main2()
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:11
 [6] top-level scope
   @ none:1
```
