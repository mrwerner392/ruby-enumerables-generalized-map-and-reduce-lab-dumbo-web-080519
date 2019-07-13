# Your Code Here
def my_own_map(array)
  counter = 0
  new_array = []

  while counter < array.length do
    new_array.push(yield(array[counter]))
    counter += 1
  end

  new_array
end
