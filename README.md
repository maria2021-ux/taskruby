# Ruby Stack Task

This repository contains a Ruby implementation of a stack-based data structure optimized for efficient calculations of the maximum value (`max`) and average value (`mean`) from a stack of numbers.

## Overview

The task involves implementing a `Stack` class and extending it with an `Extras` class to calculate the maximum value and mean of a stack efficiently. The solution is designed to handle large numbers of `push` operations and frequent calls to the `max` and `mean` methods, making these operations run in constant time (`O(1)`).

## Features

- **Efficient `max` Method**: Uses an auxiliary stack to store maximum values at each level, ensuring that the `max` method runs in constant time (`O(1)`).
- **Efficient `mean` Method**: Keeps track of the running sum of the stack elements, allowing the `mean` to be calculated in constant time (`O(1)`).
- **`push` Method**: Adds a number to the stack while maintaining the order of the stack.
- **`pop` Method**: Removes and returns the top value of the stack (FILO: First In, Last Out).

## Classes

### `Stack` Class

The `Stack` class represents a basic stack with the following methods:

- `push(number)` - Adds the number to the stack and updates the maximum value stack and sum.
- `pop` - Removes the most recently added number from the stack and updates the sum and maximum value stack.
- `max` - Returns the maximum value currently in the stack.

### `Extras` Class

The `Extras` class extends the `Stack` class and adds the following method:

- `mean` - Returns the average (mean) of the numbers in the stack. This is calculated efficiently by dividing the running sum by the size of the stack.

## Example Usage

```ruby
stack = Extras.new

# Push numbers to the stack
stack.push(20)
stack.push(400)
stack.push(80)
stack.push(330)
stack.push(2000)
stack.push(900)
stack.push(650)
stack.push(50)
stack.push(2)

# Get the maximum value
puts "Max value: #{stack.max}"   # Output: Max value: 2000

# Get the mean value
puts "Mean value: #{stack.mean}"  # Output: Mean value: 491.33

# Pop values from the stack (FILO)
puts "Popped values (FILO):"
while (popped = stack.pop)
  puts popped
end

If you're referring to where to add the max value in the README.md, it should be mentioned in the "Example Usage" section, under the output example for clarity. Here's how you can structure it:

Example Usage (Updated with max value)
In the "Example Usage" section, you already have an example where the max and mean values are printed. The max value is the maximum number from the stack, which you calculate using the max method.

Here’s an updated version of the "Example Usage" and "Output Example" sections:

ruby
Copy code
stack = Extras.new

# Push numbers to the stack
stack.push(20)
stack.push(400)
stack.push(80)
stack.push(330)
stack.push(2000)
stack.push(900)
stack.push(650)
stack.push(50)
stack.push(2)

# Get the maximum value
puts "Max value: #{stack.max}"   # Output: Max value: 2000

# Get the mean value
puts "Mean value: #{stack.mean}"  # Output: Mean value: 491.33

# Pop values from the stack (FILO)
puts "Popped values (FILO):"
while (popped = stack.pop)
  puts popped
end
 # Output Example
Max value: 2000
Mean value: 491.33
Popped values (FILO):
2
50
650
900
2000
330
80
400
20

# Answer to the question 
puts "\nProve why your solution is considered fast(er)?:"
puts "The solution is optimized by using an auxiliary stack for the `max` method, ensuring constant-time retrieval (O(1)) of the maximum value, even with a large number of elements."
puts "The `mean` method runs in constant-time (O(1)) by maintaining a running sum, avoiding the need to traverse the entire stack."
puts "Both the `push` and `pop` operations are performed in constant time (O(1)), ensuring fast performance regardless of stack size."
puts "These optimizations make the solution highly efficient, even for stacks with millions of elements, handling frequent `max` and `mean` calls with ease."
puts "Overall, the approach minimizes time complexity and provides a scalable solution for large-scale data processing."
