

var sum: int = 0

for i in countup(1, 999):
  if int(i mod 3) == 0 or int(i mod 5) == 0:
    sum = sum + i

echo($sum)
 
