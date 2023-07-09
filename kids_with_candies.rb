# https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/description/?envType=study-plan-v2&envId=leetcode-75

# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
  max = candies[0]

  i = 1
  while i < candies.length
    max = candies[i] if candies[i] > max

    i += 1
  end

  candies.map { |c| (c + extra_candies) >= max ? true : false }
end
