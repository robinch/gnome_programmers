defmodule MapCacheTest do
  use ExUnit.Case
  doctest MapCache

  test "get non existing element is nil" do
    MapCache.start()
    assert nil == MapCache.get(4)
  end

  test "get existing element" do
    MapCache.start()
    MapCache.put(1, 2)
    assert 2 = MapCache.get(1)
  end
end
