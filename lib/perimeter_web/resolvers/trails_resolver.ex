defmodule PerimeterWeb.TrailsResolver do
  alias Perimeter.Trails

  def all_trailheads(_root, _args, _info) do
    trailheads = Trails.list_trailheads()
    {:ok, trailheads}
  end
end