#!/bin/python3
def main():
    while True:
        try:
            n1 = int(input("Enter a number: "))
            break
        except ValueError:
            print("You must enter an integer. Please try again.")
    print("Double it and give it to the next person: ", n1 * 2)
if __name__ == "__main__":
    main()

