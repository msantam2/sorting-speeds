def selection_sort(arr)
  (0..arr.length - 1).each do |i|
    el = arr[i]
    current_min = el
    min_index = i
    ((i + 1)..arr.length - 1).each do |j|
      if arr[j] < current_min
        current_min = arr[j]
        min_index = j
      end
    end
    arr[i], arr[min_index] = arr[min_index], arr[i] if i != min_index
  end

  arr
end
