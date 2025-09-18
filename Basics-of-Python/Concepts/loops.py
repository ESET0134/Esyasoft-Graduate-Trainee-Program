a = [1, 2, 3, 4, 5]
for i in a:
    print(i+2)
print("\n")

i = 0
while(i<=len(a)-1):
    print(a[i]+2)
    i += 1
    
print("\n")

for num in range(1, 5):
    if num == 3:
        break
    print(num)
print("\n")

for num in range(1, 5):
    if num == 3:
        continue
    print(num)
print("\n")
