# https://leetcode.com/problems/unique-number-of-occurrences/description/?envType=study-plan-v2&envId=leetcode-75

# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
  h = {}

  arr.each do |e|
    if h[e]
      h[e] += 1
    else
      h[e] = 1
    end
  end

  a = []
  h.values.each do |val|
    return false if a.include? val
    a << val
  end

  true
end
