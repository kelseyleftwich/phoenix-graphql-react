defmodule Perimeter.Trails.Trailhead do
  use Ecto.Schema
  import Ecto.Changeset

  schema "trailheads" do
    field :latitude, :float
    field :longitude, :float
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(trailhead, attrs) do
    trailhead
    |> cast(attrs, [:name, :latitude, :longitude])
    |> validate_required([:name, :latitude, :longitude])
  end
end
