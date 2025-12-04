numbers = [1, 2, 3, 4, 5]

doubled = Enum.map(numbers, fn n -> n * 2 end)

IO.inspect(doubled)

