
discard """
If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

"""


# variable to store final result
var sum = 0

# loop through 1 to 999
# countup includes stop value
for i in countup(1, 999):
  # value should be divisible by either 3 or 5
  if i mod 3 == 0 or i mod 5 == 0:
    sum = sum + i

echo($sum)
