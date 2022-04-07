defmodule BobTest do
  use ExUnit.Case
  doctest Bob

  test "greets the world" do
    assert Bob.hello() == :world
  end
end
