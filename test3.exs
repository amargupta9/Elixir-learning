numbers = [1, 2, 3, 4, 5]

doubled = Enum.map(numbers, fn n -> n * 2 end)

IO.inspect(doubled)

# ✅ What does fn n -> ... end mean?
# fn n -> ... end is an anonymous function in Elixir.


# 🔍 What is an anonymous function?
# A function without a name
# You can create it anywhere (inline)
# You pass it to another function (like Enum.filter or Enum.map)


