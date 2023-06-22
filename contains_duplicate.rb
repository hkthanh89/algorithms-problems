# https://leetcode.com/problems/contains-duplicate/
def solutions(nums)
  h = {}

  nums.each do |e|
    if h[e]
      return true
    else
      h[e] = true
    end
  end

  return false
end

puts solutions([1,2,3,1])
puts solutions([1,2,3,4])
puts solutions([1,1,1,3,3,4,3,2,4,2])
