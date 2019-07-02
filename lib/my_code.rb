def map(source_array, block)
  i = 0
  new_array = []
  while i < source_array.length do
    n = source_array[i]
    new_array << (yield(source_array[i]))
    i +=1 
  end
  return new_array  
end 

def reduce(source_array, starting_point = 0)
  value = starting_point
  i = 0 
  while i < source_array.length do
    yield
    i += 1
  end
 return value
end