import 'package:dart_problems/dart_problems.dart' as dart_problems;
/*Problem: Two Sum
Given an array of integers nums and an integer target,
 return indices of the two numbers 
 such that they add up to target
 */
void main() {
  var solution = Solution();
  var nums = [2, 7, 11, 15];
  var target = 18;
  var result = solution.twoSum(nums, target);
  print(result);
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    var numMap = <int, int>{};
    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];
      if (numMap.containsKey(complement) && numMap[complement] != i) {
        return [i, numMap[complement]!];
      }
      numMap[nums[i]] = i;
    }
    return [];
  }
}
