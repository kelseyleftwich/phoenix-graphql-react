defmodule Perimeter.Trails.Trail do
  use Ecto.Schema
  import Ecto.Changeset

  schema "trails" do
    field :foot_travel_only, :boolean, default: false
    field :length, :float
    field :name, :string

    has_many :trailheads, Perimeter.Trails.Trailhead

    timestamps()
  end

  @doc false
  def changeset(trail, attrs) do
    trail
    |> cast(attrs, [:name, :length, :foot_travel_only])
    |> validate_required([:name, :length, :foot_travel_only])
  end
end
