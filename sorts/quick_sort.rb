def quick_sort(arr)
  return arr if arr.length <= 1

  pivot = arr.sample
  left = arr.select { |el| el < pivot }
  middle = arr.select { |el| el == pivot }
  right = arr.select { |el| el > pivot }

  quick_sort(left) + middle + quick_sort(right)
end
