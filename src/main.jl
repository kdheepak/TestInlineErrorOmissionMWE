ReadDataSetFromHDF5(name::String) = throw("$name not found")

create_data1() = (; data1=Data(; year=1))
create_data2() = (; data1=Data())

function main1(years=1:5)
  create_data1()
end

function main2(years=1:5)
  create_data2()
end