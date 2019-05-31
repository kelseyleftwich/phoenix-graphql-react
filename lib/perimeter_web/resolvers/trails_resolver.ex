defmodule PerimeterWeb.TrailsResolver do
  alias Perimeter.Trails

  def all_trails(_root, _args, _info) do
    trails = Trails.list_trails()
    {:ok, trails}
  end

  def create_trail(_root, args, _info) do
    # TODO: add detailed error message handling later
    case Trails.create_trail(args) do
      {:ok, trail} ->
        {:ok, trail}
      _error ->
        {:error, "could not create trail"}
    end
  end
end