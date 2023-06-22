# https://leetcode.com/problems/valid-anagram/
def is_anagram(s, t)
  length_s = s.size
  length_t = t.size

  return false if length_t != length_s

  i = 0
  hs = {}
  while i < length_s
    char = s[i]
    if hs[char]
      hs[char] += 1
    else
      hs[char] = 1
    end
    i += 1
  end

  j = 0
  while j < length_t
    char = t[j]

    return false unless hs[char]
    return false if hs[char] == 0

    if hs[char] > 0
      hs[char] -= 1
    end

    j += 1
  end

  return true
end

puts is_anagram("anagram", "nagaram")
puts is_anagram("rat", "car")
puts is_anagram("ab", "a")