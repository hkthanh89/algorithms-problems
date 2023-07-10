# https://leetcode.com/problems/can-place-flowers/description/

# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  return true if n == 0

  length = flowerbed.length

  i = 0
  while i < length
    can_plan = false
    l = i - 1
    r = i + 1

    if l < 0
      if flowerbed[i] == 0 && flowerbed[r] == 0
        can_plan = true
      end
    end

    if r == length
      if flowerbed[i] == 0 && flowerbed[l] == 0
        can_plan = true
      end
    end

    if (l > 0 && r < length && flowerbed[i] == 0 && flowerbed[l] == 0 && flowerbed[r] == 0)
      can_plan = true
    end

    if can_plan
      flowerbed[i] = 1
      n -= 1 if n > 0
    end

    i += 1
  end

  n == 0
end
