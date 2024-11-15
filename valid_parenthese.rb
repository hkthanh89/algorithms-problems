# https://leetcode.com/problems/valid-parentheses/

# @param {String} s
# @return {Boolean}
def is_valid(s)
  length = s.length
  return false if length == 0

  h = { 
    '(' => ')',
    '[' => ']',
    '{' => '}'
  }

  stack = []
  stack << s[0]

  return false if h.values.include?(s[0])

  i = 1
  while i < length
    if s[i] == h[stack[-1]]
      stack.pop
    else
      stack << s[i]
    end
    i += 1
  end

  return stack.length == 0
end

# Solution 2
# @param {String} s
# @return {Boolean}
def is_valid(s)
  length = s.length
  return false if length == 0

  h = { 
    ')' => '(',
    ']' => '[',
    '}' => '{'
  }

  stack = []
  i = 0
  while i < length
    if stack[-1] && stack[-1] == h[s[i]]
      stack.pop
    else
      stack << s[i]
    end

    i += 1
  end

  return stack.length == 0
end