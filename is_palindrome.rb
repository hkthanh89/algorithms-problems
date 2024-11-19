# https://leetcode.com/problems/valid-palindrome/description/

def is_palindrome(s)
  i = 0
  j = s.length - 1

  while i < j
    while i < j && !is_alphanum?(s[i])
      i += 1
    end

    while j > i && !is_alphanum?(s[j])
      j -= 1
    end

    if s[i].downcase != s[j].downcase
      return false
    end

    i += 1
    j -= 1
  end

  return true
end

def is_alphanum?(char)
  char.match?(/[[:alpha:]]/) ||
  char.match?(/[[:digit:]]/)
end

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s = s.downcase.gsub(/[^[:alnum:]]/, '')
  length = s.length
  return true if length == 0

  i = 0
  j = length - 1
  while i < j
    if s[i] == s[j]
      i += 1
      j -= 1
    else
      return false
    end
  end

  return true
end
