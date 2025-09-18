a = int(input("Enter a value: "))
if a % 2 == 0:
    print(f"{a} is even")
else:
    print(f"{a} is odd")
    
b = int(input("Enter your marks: "))
if b>0 and b >= 95:
    print("You will be awarded 2 chocolates")
elif b>0 and b >= 90:
    print("You will be awarded 1 chocolate")
elif b >= 0:
    print("You will not be awarded!")
else:
    print("Incorrect marks")