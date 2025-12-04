defmodule BasicTestTest do
  use ExUnit.Case
  doctest BasicTest

  test "greets the world" do
    assert BasicTest.hello() == :world
  end
end
