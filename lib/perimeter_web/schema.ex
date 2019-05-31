defmodule PerimeterWeb.Schema do
  use Absinthe.Schema
  
  alias PerimeterWeb.TrailsResolver
  alias PerimeterWeb.TrailheadsResolver

  object :trailhead do
    field :name, :string
    field :latitude, :float
    field :longitude, :float
  end

  object :trail do
    field :name, :string
    field :length, :float
    field :foot_travel_only, :boolean
  end

  query do
    field :trailheads, list_of(:trailhead) do
      resolve(&TrailheadsResolver.all_trailheads/3)
    end

    field :trails, list_of(:trail) do
      resolve(&TrailsResolver.all_trails/3)
    end
  end

  mutation do
    field :create_trailhead, :trailhead do
      arg :name, non_null(:string)
      arg :latitude, non_null(:float)
      arg :longitude, non_null(:float)
  
      resolve &TrailheadsResolver.create_trailhead/3
    end

    field :create_trail, :trail do
      arg :name, non_null(:string)
      arg :length, non_null(:float)
      arg :foot_travel_only, :boolean

      resolve &TrailsResolver.create_trail/3
    end
  end

end