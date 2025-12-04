# name = IO.gets("What is your name? ")
# IO.puts("Hello, #{String.trim(name)}!")


a = ""
if String.length(a) === 0 do
IO.puts("a is an empty string")
else # else does not use do. Only if uses do ... else ... end.
IO.puts("#{String.trim(a)}") #Interpolation is only needed when you want to build a sentence containing variables or expressions.
# Here #{String.trim(a)} inserts the trimmed string inside a bigger sentence.
end


# ✅ Now, your REAL question:

# String.trim(a) works by itself—so why would we ever need "#{...}"?


# 🎯 1. When you don’t need #{}

# If you only want to print the string itself:
# IO.puts(String.trim(a))
# This is perfect.
# No need for interpolation.


# 🎯 2. When you DO need #{...}

# String interpolation (#{...}) is used when you want to insert a value inside another string.
# It is NOT needed when printing a single string value alone.
