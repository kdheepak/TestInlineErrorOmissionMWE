# TestInlineErrorOmissionMWE

`main1()`:

```julia
$ julia --project -e 'using TestInlineErrorOmissionMWE; TestInlineErrorOmissionMWE.main1()'
ERROR: "group/x1 not found"
Stacktrace:
 [1] ReadDataSetFromHDF5(name::String)
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:1
 [2] create_data1()
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:3
 [3] main1(years::UnitRange{Int64}) (repeats 2 times)
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:7
 [4] top-level scope
   @ none:1
```

`main2()`:

```julia
$ julia --project -e 'using TestInlineErrorOmissionMWE; TestInlineErrorOmissionMWE.main2()'
ERROR: "group/x1 not found"
Stacktrace:
 [1] ReadDataSetFromHDF5(name::String)
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:1
 [2] TestInlineErrorOmissionMWE.Data()
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\data.jl:5
 [3] create_data2()
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:4
 [4] main2(years::UnitRange{Int64}) (repeats 2 times)
   @ TestInlineErrorOmissionMWE C:\Users\USERNAME\gitrepos\TestInlineErrorOmissionMWE\src\main.jl:11
 [5] top-level scope
   @ none:1
```
