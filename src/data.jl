struct Data
  x1::Vector{String}
end

Data(; x1=default_value("x1")) = Data(x1)