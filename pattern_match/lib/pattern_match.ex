defmodule PatternMatch do
  def invert_tuple({a, b}), do: {b, a}

  def copies?(a, a), do: true
  def copies?(_, _), do: false
end
