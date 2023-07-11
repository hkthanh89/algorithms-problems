# https://leetcode.com/problems/find-the-difference-of-two-arrays/description/?envType=study-plan-v2&envId=leetcode-75

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[][]}
def find_difference(nums1, nums2)
  h1 = {}
  nums1.each { |n| h1[n] = n unless h1[n] }

  h2 = {}
  nums2.each { |n| h2[n] = n unless h2[n] }

  answer1 = []
  h1.keys.each { |key| answer1 << key unless h2[key] }

  answer2 = []
  h2.keys.each { |key| answer2 << key unless h1[key] }

  [answer1, answer2]
end
