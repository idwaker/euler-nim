# module prime

import math


# primality test
proc is_prime*(n: int64): bool =
  if n == 2: return true
  if n < 2 or n mod 2 == 0: return false
  for i in countup(3, int(math.sqrt(n.float64)), 2):
    if n mod i == 0:
      return false
  return true


# generate primes sequence
iterator primes*(): int =
  var n = 1
  while true:
    n += 1
    if is_prime(n): yield n
