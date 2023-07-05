# https://leetcode.com/problems/two-sum/description/

def two_sum(nums, target)
  return if nums.length < 2

  h = {}
  i = 0
  while i < nums.length
    num = target - nums[i]

    if h[num]
      return [h[num], i]
    else
      h[nums[i]] = i
    end

    i += 1
  end
end
