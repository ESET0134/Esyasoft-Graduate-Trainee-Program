import math
def main():
    length = int(input("Length: "))
    breadth = int(input("Breadth: "))
    if length == breadth:
        print("It is a square!")
    else:
        print("It is not a square!")
    area = length * breadth
    print("Area:", area)

if __name__ == "__main__":
    main()