numbers = [1, 2, 3]
squares = Enum.map(numbers, fn n -> n * n end)
IO.inspect(squares, label: "Squares")



#  ✅ Shortest (all inline)

IO.inspect(Enum.map([1, 2, 3], &(&1 * &1)), label: "Squares")

# 1. numbers = [1, 2, 3]
# This creates a list of numbers.
# The variable numbers now holds the list:

# 2. squares = Enum.map(numbers, fn n -> n * n end)

# What Enum.map/2 does:
# Enum.map takes a collection (like a list) and a function.
# It applies that function to every element in the collection.
# It returns a new list.

# Breaking it down:
# numbers is the list [1, 2, 3]
# fn n -> n * n end is an anonymous function that:
# takes a number n
# returns n * n (the square)

# 3. IO.inspect(squares, label: "Squares")
# IO.inspect prints data in a developer-friendly way (useful for debugging).
# label: "Squares" adds a label before the output.



# ✅ What IO.inspect Does

# IO.inspect(value) prints the raw Elixir representation of a value.

# That means it shows data exactly as Elixir sees it, not in a “pretty formatted” or user-friendly way— but in a way that helps you understand the structure of the data inside your program.



# 🔍 Why it's useful for developers (debugging)

# When you're debugging, you want to see:

# What data your variables contain

# What type of data they are

# What the program is returning

# How something is changing step by step

# IO.puts can only print strings, so it’s not ideal for debugging complex data.

# But IO.inspect prints:

# lists

# maps

# tuples

# structs

# nested data

# results of functions



# 🥇 1. Purpose

# IO.puts — Print text for users
# Prints strings only
# Automatically adds a new line
# Best for user-friendly messages

# IO.inspect — Print raw data for developers
# Prints any Elixir data structure
# Shows values exactly as Elixir sees them
# Best for debugging



# | Feature               | `IO.puts`         | `IO.inspect`                    |
# | --------------------- | ----------------- | ------------------------------- |
# | Prints strings        | ✅ yes             | 🔸 yes (converts automatically) |

# | Prints maps/lists     | ❌ no              | ✅ yes                           |

# | Adds newline          | ✅ yes             | ❌ no                            |

# | Debugging use         | ❌ not ideal       | ✅ excellent                     |

# | User messages         | ✅ perfect         | ❌ not ideal                     |

# | Returns original data | ❌ no (`:ok` only) | ✅ yes                           |

# | Good in pipelines     | ❌ no              | ✅ yes                           |


# 🧠 Summary
# IO.inspect is useful because:

# It prints data exactly as it exists in the program.
# Works with any kind of Elixir data.
# Helps developers debug and understand what’s happening.
# You can label your output.
# It returns the original value, so it fits nicely into pipelines.
