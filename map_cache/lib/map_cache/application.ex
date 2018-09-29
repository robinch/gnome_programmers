defmodule MapCache.Application do
  use Application

  def start(_types, _values) do
    MapCache.start()
  end

end
