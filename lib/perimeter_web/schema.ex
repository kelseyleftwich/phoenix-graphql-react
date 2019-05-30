defmodule PerimeterWeb.Schema do
  use Absinthe.Schema

  alias PerimeterWeb.TrailsResolver

  object :trailhead do
    field :name, :string
  end

  query do
    field :all_trailheads, list_of(:trailhead) do
      resolve(&TrailsResolver.all_trailheads/3)
    end
  end
end