# https://leetcode.com/problems/is-subsequence/description/?envType=study-plan-v2&envId=leetcode-75

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  s_length = s.length
  t_length = t.length

  return false if s_length > t_length
  return true if s_length == 0

  i = 0
  j = 0

  while i < t_length
    if s[j] == t[i]
      j += 1
      i += 1

      if j == s_length
        return true
      end
    else
      i += 1
    end
  end

  return false
end
