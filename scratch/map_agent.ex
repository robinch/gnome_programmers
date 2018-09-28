defmodule MapAgent do
  def start() do
    Agent.start_link(fn -> %{} end)
  end

  def get(agent, val) do
    Agent.get(agent, &Map.get(&1, val))
  end

  def put(agent, key, val) do
    Agent.update(agent, &Map.put(&1, key, val))
  end
end
