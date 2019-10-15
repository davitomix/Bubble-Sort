# frozen_string_literal: true

def bubble_sort_by(arr)
  if block_given?
    swap = false
    while swap != true
      swap = true
      (0..(arr.length - 2)).each do |i|
        if yield(arr[i], arr[i + 1]).positive?
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          swap = false
        end
      end
    end
  else
    raise 'No block given' unless arr?
  end
  puts '------------'
  output = arr.join(', ')
  puts "[#{output}]"
end

# given test :)
bubble_sort_by(%w[hey hello hi]) { |left, right| left.length - right.length }
