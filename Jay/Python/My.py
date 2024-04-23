class Solution:
    def getConcatenation(self, nums: list[int]) -> list[int]:
        for i in nums:
            nums.append(i)

        return nums
    
