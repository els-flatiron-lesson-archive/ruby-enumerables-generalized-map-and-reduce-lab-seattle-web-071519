def map(array)
  i = 0
  new_array = []
  while i < array.length do
    new_array.push(yield(array[i]))
    i +=1 
  end
  return new_array  
end 

def reduce(source_array, starting_point = nil)
  if starting_point
    value = starting_point
    i = 0
  else 
    value = source_array[0]
    i = 1
  end
  while i < source_array.length do
    value = yield(value, source_array[i])
    i += 1
  end
 return value
end