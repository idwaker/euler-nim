
discard """
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
we can see that the 6th prime is 13.

What is the 10 001st prime number?
"""

from prime import primes


# assert(is_prime(3) == true)


proc nthprime(num: int): int =
  var i = 1
  for p in primes():
    if i == num:
      result = p
      break
    i += 1


let prim = nthprime(10_001)
echo($prim)
