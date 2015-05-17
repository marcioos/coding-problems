def quicksort(array, start_i, end_i)
  if start_i >= end_i
    return array
  end
  pivot_i = pivot(array, start_i, end_i)
  quicksort(array, start_i, pivot_i - 1)
  quicksort(array, pivot_i + 1, end_i)
end

def pivot(array, start_i, end_i)
  pivot_i = start_i
  ((start_i + 1)..end_i).each do |index|
    item = array[index]
    if item < array[pivot_i]
      item_to_shift_i = index
      while item_to_shift_i > pivot_i
        array[item_to_shift_i - 1], array[item_to_shift_i] = array[item_to_shift_i], array[item_to_shift_i - 1]
        item_to_shift_i -= 1
      end
      pivot_i += 1
    end
  end
  return pivot_i
end

input = [2200, 3000, 5000, 4000, 20, 5, 6000]
print "Input:  ", input, "\n"
print "Sorted: ", quicksort(input, 0, input.size - 1), "\n"
