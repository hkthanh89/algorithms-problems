# https://leetcode.com/problems/maximum-average-subarray-i/description/?envType=study-plan-v2&envId=leetcode-75

# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
  i = 0
  sum = 0
  while i < k
    sum += nums[i]
    i += 1
  end

  avg = sum

  j = k
  while j < nums.length
    sum += nums[j]
    sum -= nums[j - k]
    avg = sum if sum > avg

    j += 1
  end

  avg / (k * 1.0)
end
