def bubble_sort(arr)
  return arr if arr.length <= 1

  sorted = false
  until sorted
    sorted = true

    (0...arr.length - 1).each do |i|
      (i...arr.length).each do |j|
        if arr[i] > arr[j]
          arr[i], arr[j] = arr[j], arr[i]
          sorted = false
        end
      end
    end
  end

  arr
end
