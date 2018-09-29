defmodule MapCache do

  @me __MODULE__

    def start() do
      Agent.start_link(fn -> %{} end, name: @me)
    end

    def get(val) do
      Agent.get(@me, &Map.get(&1, val))
    end

    def put(key, val) do
      Agent.update(@me, &Map.put(&1, key, val))
    end
  end
