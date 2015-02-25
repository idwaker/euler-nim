
discard """
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
"""

import math


# primality test
proc is_prime(n: int64): bool =
  if n == 2: return true
  if n < 2 or n mod 2 == 0: return false
  for i in countup(3, int(math.sqrt(n.float64)), 2):
    if n mod i == 0:
      return false
  return true


# generate primes sequence
iterator primes(): int =
  var n = 1
  while true:
    n += 1
    if is_prime(n): yield n


# find largest factor
proc factor(n: int64): int64 =
  if is_prime(n):
    return n
  for i in primes():
    # make both divident and divisor to float
    let quo = n.float / i.float
    if n mod i == 0:
      discard "we have factor"
      return factor(quo.int64)


let num = 600851475143
let lfactor = factor(num)
echo($lfactor)
