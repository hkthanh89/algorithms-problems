# https://leetcode.com/problems/move-zeroes/description/

def move_zeroes(nums)
  i = 0
  j = 0

  while i < nums.length
    if nums[i] != 0
      tmp = nums[j]
      nums[j] = nums[i]
      nums[i] = tmp

      j += 1
    end

    i += 1
  end

  nums
end
