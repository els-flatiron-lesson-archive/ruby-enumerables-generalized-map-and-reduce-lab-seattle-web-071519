def map(array, block)
  i = 0
  new_array = []
  while i < array.length do
    new_array.push(yield(array[i]))
    i +=1 
  end
  return new_array  
end 

def reduce(source_array, starting_point = 0)
  value = starting_point
  i = 0 
  while i < source_array.length do
    value = yield(value, array[i])
    i += 1
  end
 return value
end