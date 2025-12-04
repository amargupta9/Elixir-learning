IO.write("Hello")
IO.write(" - still on the same line")


# 🔍 What IO.write/1 does

# IO.write prints text to the screen but does NOT add a newline at the end.

# This is the main difference from IO.puts, which always moves to a new line after printing.


# 1️⃣ IO.write("Hello")

# Prints the text Hello
# Does not move to a new line

# 2️⃣ IO.write(" - still on the same line")
# Prints the next text directly after the previous one
# Still does not add a newline

# Everything appears on one single line because IO.write never creates a newline by itself.


# IO.write = print text, no newline

# IO.puts = print text + newline
