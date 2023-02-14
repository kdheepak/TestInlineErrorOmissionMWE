@inline data1() = (; data1=Data1(), data2=Data1(), data3=Data1(), data4=Data1())
@inline data2() = (; data1=Data2(), data2=Data2(), data3=Data2(), data4=Data2())

@inline function main(; data1, data2, data3, data4)
    for _ in 1:50
        @show data1
    end
end
