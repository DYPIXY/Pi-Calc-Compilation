#Initialize denominator
denominator = 1
sum = 0
loop = 1000000000000000000000000000000000000000000000000000

for i in range(0, loop):
    #even index add to sum
    if i % 2 == 0:
        sum += 4/denominator
    else:
    #odd index subtract from sum
        sum -= 4/denominator
    #increment denominator by 2 
    denominator += 2
    
print("Value of Pi is : ",sum)