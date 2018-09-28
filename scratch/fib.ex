defmodule Fib do
  alias MapAgent

  def fib(n) do
    {:ok, agent} = MapAgent.start()
    MapAgent.put(agent, 0, 0)
    MapAgent.put(agent, 1, 1)
    fib_helper(n, agent)
  end

  defp fib_helper(n, agent) do
    case MapAgent.get(agent, n) do
      nil ->
        MapAgent.put(agent, n, fib_helper(n - 1, agent) + fib_helper(n - 2, agent))
        MapAgent.get(agent, n)

      ans ->
        ans
    end
  end
end
