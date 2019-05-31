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

  mutation do
    field :create_trailhead, :trailhead do
      arg :name, non_null(:string)
      arg :latitude, non_null(:float)
      arg :longitude, non_null(:float)
  
      resolve &TrailsResolver.create_trailhead/3
    end
  end

end