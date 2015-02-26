
discard """

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a2 + b2 = c2

For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
"""

import math


# find list of three numbers whose sum is 1000 
# they must satisfy a < b < c
# they must satify a^2 + b^2 = c^2


proc triplets(total: int): array[3, int] =
  let base = int(total / 2)

  for a in 1..base:
    for b in (a + 1)..base:
      var c = total - (a + b)
      if math.pow(a.float, 2) + math.pow(b.float, 2) == math.pow(c.float, 2):
        return [a, b, c]


let tri = triplets(1000)
var prod = 1
for i in tri:
  prod *= i

echo($prod)
