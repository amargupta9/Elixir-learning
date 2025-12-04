[2,4,6]
|> IO.inspect()      # prints, BUT returns :ok
|> Enum.sum()     # Enum.sum(:ok) → crash




# square = &(&1 * &1)
# IO.puts(square.(5))

# &(&1 * &1) is equivalent to: square = fn x -> x * x end

# ✔ 2. square.(5)
# This calls the function stored in square with the argument 5.
# The result is 25, but you're not doing anything with it (not printed or assigned), so nothing appears in the output.




result =
  [1,2,3]
  |> Enum.map(&(&1 * 2))
  |> IO.inspect(label: "After doubling")
  |> Enum.sum()

IO.puts("Final result: #{result}")


# 1. What does &(&1) mean?

# This is the capture operator in Elixir.
# It is a shortcut for writing anonymous functions.

# Meaning:

# & = create an anonymous function
# &1 = the first argument
# &2 = the second argument
# &3 = the third argument
# (if needed)


# ⭐ 2. How does Elixir turn &(&1 * &1) into a function?

# When Elixir sees &(...):
# It creates a function
# Replaces each &n with a variable
# Returns a function object


# | Feature                       | Anonymous (`fn`)   | Named (`def`)    |

# | ----------------------------- | ------------------   | ---------------- |
# | Has a name?                   | ❌ no               | ✅ yes            |

# | Needs dot to call?            | ✅ yes (`func.(x)`) | ❌ no (`func(x)`) |

# | Must be inside module?        | ❌ no               | ✅ yes            |

# | Good for small, inline tasks? | ✅ perfect          | ❌ not ideal      |
