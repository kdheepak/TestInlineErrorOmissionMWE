ReadDataSetFromHDF5(name::String) = throw("$name not found")

create_data1(year) = (; data1=Data(; year))
create_data2(year) = (; data1=Data())

function main1(years=1:5)
  for year in years
    (; data1) = create_data1(year)
  end
end

function main2(years=1:5)
  for year in years
    (; data1) = create_data2(year)
  end
end