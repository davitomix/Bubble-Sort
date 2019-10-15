# frozen_string_literal: true

def bubble_sort(arr)
  swap = false
  while swap != true
    swap = true
    (0..(arr.length - 2)).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = false
      end
    end
  end
  output = arr.join(", ")
  return "[#{output}]"
end

puts bubble_sort([4,3,78,2,0,2])
# result => [0,2,2,3,4,78]
