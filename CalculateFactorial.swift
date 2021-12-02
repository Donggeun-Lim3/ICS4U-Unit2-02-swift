/*
This program gets some integer input,
calculates the intger using recursion and shows the factorial integer.
author  Donggeun Lim
version 1.0
since   2021-12-02
*/

enum InvalidInputError: Error {
  case invalidInput
}

// This function uses recursion to reverse the string.
func factorial(someInteger: Int) -> Int {
  if someInteger == 1 || someInteger == 0 {
    return 1
  } else {
    return someInteger * factorial(someInteger: someInteger - 1)
  }
}

// Input
print("Enter the number to be factorial(!) (only positive integer): ",
terminator: "")
do {
  guard let someInteger = Int(readLine()!) else {
    throw InvalidInputError.invalidInput
  }
  if someInteger >= 0 && someInteger != 1 {
    // Output
    print("\(someInteger)! is just \(someInteger)*\(someInteger - 1)!")
    print("\(someInteger)! = \(factorial(someInteger: someInteger))")
  } else if someInteger == 1 {
    print("\(someInteger)! is just \(factorial(someInteger: someInteger))")
    print("\(someInteger)! = \(factorial(someInteger: someInteger))")
  } else {
    print("Only positive!")
  }
} catch {
  print("Invalid input.")
}
print("\nDone.")
