
discard """
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
"""

from prime import primes


proc summation(high: int): int =
  result = 0
  for p in primes():
    if p < high:
      result += p
    else:
      break


let res = summation(2000000)
echo($res)
