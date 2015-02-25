

# variable to store final result
var sum = 0

# loop through 1 to 999
# countup includes stop value
for i in countup(1, 999):
  # value should be divisible by either 3 or 5
  if int(i mod 3) == 0 or int(i mod 5) == 0:
    sum = sum + i

echo($sum)
 
