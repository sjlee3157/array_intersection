# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)

  intersection = []

  if array1 == nil || array2 == nil || array1 == [] || array2 == []
    return intersection
  end

  raise ArgumentError unless (array1.class == Array && array2.class == Array)

  array1.length.times do |i|
    common_element = nil
    array2.length.times do |ii|
      if array2[ii] == array1[i]
        common_element = array1[i]
      end
    end
    if common_element != nil
      intersection << common_element
    end
  end

  return intersection
end

# Space complexity: O(n) linear
# Time complexity: O(n**2) quadratic
