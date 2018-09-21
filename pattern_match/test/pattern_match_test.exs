defmodule PatternMatchTest do
  use ExUnit.Case
  doctest PatternMatch

  test "greets the world" do
    assert PatternMatch.hello() == :world
  end
end
