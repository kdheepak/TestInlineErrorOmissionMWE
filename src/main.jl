data(year) = (; data1=Module.Data(; year), data2=Module.Data(; year), data3=Module.Data(; year), data4=Module.Data(; year))

f(d) = @show d

function main(years=1:5; silent=false, write=false)
  isfile(joinpath(@__DIR__, "../data/output.hdf5")) && rm(joinpath(@__DIR__, "../data/output.hdf5"))
  for year in years
    (; data1, data2, data3, data4) = data(year)
    f(data1)
  end
end