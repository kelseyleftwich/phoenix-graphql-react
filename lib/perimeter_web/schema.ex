defmodule PerimeterWeb.Schema do
  use Absinthe.Schema

  alias PerimeterWeb.TrailsResolver

  object :trailhead do
    field :name, :string
    field :latitude, :float
    field :longitude, :float
  end

  query do
    field :trailheads, list_of(:trailhead) do
      resolve(&TrailsResolver.all_trailheads/3)
    end
  end
end