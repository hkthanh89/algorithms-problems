# https://leetcode.com/problems/find-pivot-index/description/?envType=study-plan-v2&envId=leetcode-75

# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
  sum = 0
  nums.each { |n| sum += n }

  i = 0
  left_sum = 0
  pivot_index = -1
  while i < nums.length
    if (sum - left_sum - nums[i]) == left_sum
      pivot_index = i
      break
    end
    left_sum += nums[i]

    i += 1
  end

  pivot_index
end
