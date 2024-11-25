# https://leetcode.com/problems/majority-element/

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  length = nums.length
  appear_time = length / 2

  i = 0
  h = {}
  while i < length
    h[nums[i]] = (h[nums[i]] || 0) + 1
    
    if h[nums[i]] > appear_time
      return nums[i]
    end

    i += 1
  end
end

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  length = nums.length
  count = 0
  element = 0

  i = 0
  while i < length
    element = nums[i] if count == 0

    count += 1 if element == nums[i]

    count -= 1 if element != nums[i]

    i += 1
  end

  element
end