def merge_sort(arr)
  return arr if arr.length <= 1

  middle_idx = arr.length / 2
  left = arr.take(middle_idx)
  right = arr.drop(middle_idx)

  merge(merge_sort(left), merge_sort(right))
end

def merge(arr1, arr2)
  result = []

  until arr1.empty? || arr2.empty?
    if arr1.first < arr2.first
      result << arr1.shift
    else
      result << arr2.shift
    end
  end

  result.concat(arr1).concat(arr2)
end
