/*Given a signed 32-bit integer x,
 return x with its digits reversed. 
 If reversing x causes the value to
go outside the signed 32-bit
integer range [-2^31, 2^31 - 1], then return 0 */
void main() {
  var solution = Solution();
  var x = 123;
  var result = solution.reverse(x);
  print(result);
}

class Solution {
  int reverse(int x) {
    int reversed = 0;
    while (x != 0) {
      int pop = x % 10;
      x ~/= 10;
      if (reversed > 2147483647 ~/ 10 || (reversed == 2147483647 ~/ 10 && pop > 7)) return 0;
      if (reversed < -2147483648 ~/ 10 || (reversed == -2147483648 ~/ 10 && pop < -8)) return 0;
      reversed = reversed * 10 + pop;
    }
    return reversed;
  }
}
