# TestInlineErrorOmissionMWE

Error message generated:

```julia
$ julia --project -e "using TestInlineErrorOmissionMWE; main(data1())"
ERROR: "groupname/x1 not found"
Stacktrace:
 [1] ReadDataSetFromHDF5
   @ ~/gitrepos/TestInlineErrorOmissionMWE/src/core.jl:3 [inlined]
 [2] Data1
   @ ~/gitrepos/TestInlineErrorOmissionMWE/src/data.jl:9 [inlined]
 [3] data1()
   @ TestInlineErrorOmissionMWE ~/gitrepos/TestInlineErrorOmissionMWE/src/main.jl:1
 [4] top-level scope
   @ none:1
```

```julia
$ julia --project -e "using TestInlineErrorOmissionMWE; main(data2())"
ERROR: "groupname/x1 not found"
Stacktrace:
 [1] ReadDataSetFromHDF5
   @ ~/gitrepos/TestInlineErrorOmissionMWE/src/core.jl:3 [inlined]
 [2] TestInlineErrorOmissionMWE.Data2()
   @ TestInlineErrorOmissionMWE ./util.jl:493
 [3] data2()
   @ TestInlineErrorOmissionMWE ~/gitrepos/TestInlineErrorOmissionMWE/src/main.jl:2
 [4] top-level scope
   @ none:1
```
