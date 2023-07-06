# https://leetcode.com/problems/merge-strings-alternately/?envType=study-plan-v2&envId=leetcode-75

# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
  l1 = word1.length
  l2 = word2.length
  length = l1 > l2 ? l1 : l2

  i = 0
  s = ""
  while i < length
    if i < l1
      s << word1[i]
    end

    if i < l2
      s << word2[i]
    end

    i += 1
  end

  s
end
