# https://leetcode.com/problems/reverse-vowels-of-a-string/?envType=study-plan-v2&envId=leetcode-75

# @param {String} s
# @return {String}
def reverse_vowels(s)
  l = 0
  r = s.length - 1

  vowels = ['a', 'e', 'i', 'o', 'u']

  while l < r
    while l < r && !vowels.include?(s[l].downcase)
      l += 1
    end

    while l < r && !vowels.include?(s[r].downcase)
      r -= 1
    end

    tmp = s[l]
    s[l] = s[r]
    s[r] = tmp
    l += 1
    r -= 1
  end

  s
end
