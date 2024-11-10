def merge_sort(arr)
  length = arr.length
  return arr if length <= 1

  mid = arr.length / 2
  left_half = arr[0...mid]
  right_half = arr[mid..]

  merge(merge_sort(left_half), merge_sort(right_half))
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    sorted << if left.first <= right.first
                left.shift
              else
                right.shift
              end
  end
  sorted + left + right
end
arr = [3, 2, 1, 13, 8, 5, 0, 1]

p merge_sort(arr)
