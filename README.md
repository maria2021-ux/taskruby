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
