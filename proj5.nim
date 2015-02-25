
discard """

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 
without any remainder.

What is the smallest positive number that is evenly divisible by all of the 
numbers from 1 to 20?

"""

var n = 20

block main:
  while true:
    block inner:
      for j in 2..20:
        if n mod j == 0:
          continue
        else:
          break inner
      break main
    n += 1

echo($n)
