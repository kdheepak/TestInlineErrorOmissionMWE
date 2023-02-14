## data.jl

struct Data1
    year::Int
    x1::Vector{String}
    x2::Vector{String}
end

@inline Data1(; year=1, x1=ReadDataSetFromHDF5("groupname/x1"), x2=ReadDataSetFromHDF5("groupname/x1")) = Data1(year, x1, x2)

Base.@kwdef struct Data2
    year::Int = 1
    x1::Vector{String} = ReadDataSetFromHDF5("groupname/x1")
    x2::Vector{String} = ReadDataSetFromHDF5("groupname/x2")
end
