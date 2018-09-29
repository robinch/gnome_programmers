defmodule FibonacciTest do
  use ExUnit.Case
  doctest Fibonacci

  test "fib 0 is 0" do
    assert 0 == Fibonacci.fib(0)
  end

  test "fib 1 is 1" do
    assert 1 == Fibonacci.fib(1)
  end

  test "fib 30 is 832040" do
   assert 832040 == Fibonacci.fib(30)
  end
end
