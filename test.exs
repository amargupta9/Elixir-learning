defmodule MathTest do
  def add(a, b) do
    a + b
  end
end

IO.puts("2 + 3 = #{MathTest.add(2, 3)}")
