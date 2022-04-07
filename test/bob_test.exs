defmodule BobTest do
  use ExUnit.Case
  doctest Bob

  test "sending message to bob" do
    assert Bob.message("") == "Fine. Be that way!"

    assert Bob.message("HOW ARE YOU?") == "Calm down, I know what I’m doing!"

    assert Bob.message("How are you?") == "Sure."

    assert Bob.message("TELL ME YOUR NAME") == "Whoa, chill out!"

    assert Bob.message(0) == "Whatever."

    assert Bob.message() == "Whatever."
  end
end
