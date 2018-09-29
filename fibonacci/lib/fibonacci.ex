defmodule Fibonacci do

  def fib(n) do
    MapCache.put(0, 0)
    MapCache.put(1, 1)
    fib_helper(n)
  end

  defp fib_helper(n) do
    case MapCache.get(n) do
      nil ->
        MapCache.put(n, fib_helper(n - 1) + fib_helper(n - 2))
        MapCache.get(n)

      ans ->
        ans
    end
  end
end
