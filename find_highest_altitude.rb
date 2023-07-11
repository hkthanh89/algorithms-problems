# https://leetcode.com/problems/find-the-highest-altitude/description/?envType=study-plan-v2&envId=leetcode-75

# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
  max = 0
  current_altitude = 0

  i = 0
  while i < gain.length
    current_altitude += gain[i]
    max = current_altitude if current_altitude > max

    i += 1
  end

  max
end
