# maps array elements onto a new array
def map(array)
  counter = 0
  new_array = []

  while counter < array.length do
    new_array.push(yield(array[counter]))
    counter += 1
  end

  new_array
end

def reduce(array, reduce_value*)
  counter = 0

  while counter < array.length do
    reduce_value = yield(reduce_value, array[counter])
    counter += 1
  end

  reduce_value
end
