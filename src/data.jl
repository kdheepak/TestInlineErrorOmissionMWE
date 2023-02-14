struct Data
  x1::Vector{String}
end

Data(; x1=ReadDataSetFromHDF5("group/x1")) = Data(x1)