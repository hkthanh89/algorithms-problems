# https://leetcode.com/problems/ransom-note/

# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  return false if ransom_note.length > magazine.length

  h1 = {}
  i = 0
  length = magazine.length
  while i < length
    char = magazine[i]
    h1[char] = (h1[char] || 0) + 1

    i += 1
  end

  i = 0
  length = ransom_note.length
  while i < length
    char = ransom_note[i]
    return false unless h1[char]

    h1[char] -= 1
    return false if h1[char] < 0

    i += 1
  end

  return true
end