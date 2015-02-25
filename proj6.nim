
discard """

The sum of the squares of the first ten natural numbers is,
1^2 + 2^2 + ... + 10^2 = 385

The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)^2 = 55^2 = 3025

Hence the difference between the sum of the squares of the first ten 
natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the 
first one hundred natural numbers and the square of the sum.

"""

import math


proc main(num: int): int =
  var
    sumof = 0
    squareof = 0
  
  for i in 1..num:
    sumof += math.pow(i.float, 2).int
    squareof += i
  
  math.pow(squareof.float, 2).int - sumof


let result = main(100)
echo($result)
