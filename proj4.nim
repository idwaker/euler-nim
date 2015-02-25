
discard """
A palindromic number reads the same both ways. 
The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

"""

import strutils


proc reverse(str: string): string =
  result = newString(str.len)
  for i, c in str:
    result[str.high - i] = c


proc is_palindrome(str: string): bool =
  str == reverse(str)


var ret = 0

block main:
  for i in countdown(999, 1):
    for j in countdown(999, 1):
      let val = i * j
      if is_palindrome(strutils.intToStr(val)):
        if ret < val: ret = val

echo($ret)
