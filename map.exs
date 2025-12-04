data = %{name: "Alice", age: 25}
IO.inspect(data, label: "User Data")


# 1. data = %{name: "Alice", age: 25}

# %{} creates a map, which is a key–value data structure in Elixir.

# name: and age: are atoms used as keys.

# "Alice" and 25 are the corresponding values.

# So the variable data holds this map:

# Maps in Elixir are similar to dictionaries in Python or objects in JavaScript.



# 2. IO.inspect(data, label: "User Data")

# IO.inspect/2 prints a value to the console in a readable way.

# It’s often used for debugging because it shows the internal structure of variables.

# The label: option lets you prefix the output with text.


#    Part                  | Meaning
#   ---------------------  | -----------------------------------
#  `%{...}`                | Creates a map (key–value structure)

#  `data = ...`            | Stores the map in a variable

#  `IO.inspect(data)`      | Prints the full structure of `data`
#  `label: "User Data"`    | Adds a label to the printed output
