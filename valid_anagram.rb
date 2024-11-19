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

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  s_length = s.length
  t_length = t.length

  return false if s_length !=  t_length
  
  hs = {}
  i = 0
  while i < s_length
    char = s[i]
    if hs[char]
      hs[char] += 1
    else
      hs[char] = 1
    end

    i += 1
  end

  i = 0
  while i < t_length
    char = t[i]
    return false unless hs[char]

    if hs[char]
      hs[char] -= 1

      return false if hs[char] < 0
    else
      return false
    end

    i += 1
  end

  return true
end

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s.length != t.length

  length = s.length
  i = 0

  hs = {}
  ht = {}
  while i < length
    hs[s[i]] = (hs[s[i]] || 0 ) + 1
    ht[t[i]] = (ht[t[i]] || 0 ) + 1

    i += 1
  end

  hs.keys.each do |char|
    return false unless ht[char]
    return false if hs[char] != ht[char]
  end

  return true
end

puts is_anagram("anagram", "nagaram")
puts is_anagram("rat", "car")
puts is_anagram("ab", "a")