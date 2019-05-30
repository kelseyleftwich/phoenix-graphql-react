defmodule Perimeter.Repo.Migrations.CreateTrailheads do
  use Ecto.Migration

  def change do
    create table(:trailheads) do
      add :name, :string
      add :latitude, :float
      add :longitude, :float

      timestamps()
    end

  end
end
