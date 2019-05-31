defmodule PerimeterWeb.TrailheadsResolver do
  alias Perimeter.Trails

  def all_trailheads(_root, _args, _info) do
    trailheads = Trails.list_trailheads()
    {:ok, trailheads}
  end

  def find(%{name: name}, _info) do
    case Trails.get_trailhead_by_name(name) do
      nil -> {:error, "Trailhead #{name} not found!"}
      trailhead -> {:ok, trailhead}
    end
  end

  def create_trailhead(_root, args, _info) do
    # TODO: add detailed error message handling later
    case Trails.create_trailhead(args) do
      {:ok, trailhead} ->
        {:ok, trailhead}
      _error ->
        {:error, "could not create trailhead"}
    end
  end
end