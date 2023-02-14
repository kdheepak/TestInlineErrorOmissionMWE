module Module

using ..TestInlineErrorOmissionMWE: ReadDataSetFromHDF5

Base.@kwdef struct Data
  year::Int
  x1::Vector{String} = ReadDataSetFromHDF5("group/x1")
  x2::Vector{String} = ReadDataSetFromHDF5("group/x2")
  x3::Vector{String} = ReadDataSetFromHDF5("group/x3")
  x4::Vector{String} = ReadDataSetFromHDF5("group/x4")
  x5::Vector{String} = ReadDataSetFromHDF5("group/x5")
end

end