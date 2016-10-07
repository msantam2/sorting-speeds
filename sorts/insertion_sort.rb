def insertion_sort(arr)
  (1..arr.length - 1).each do |i|
    el = arr[i]
    j = i
    while j > 0 && arr[j - 1] > el
      arr[j] = arr[j - 1]
      j -= 1
    end

    arr[j] = el
  end

  arr
end
