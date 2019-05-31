defmodule Perimeter.Repo.Migrations.CreateTrails do
  use Ecto.Migration

  def change do
    create table(:trails) do
      add :name, :string
      add :length, :float
      add :foot_travel_only, :boolean, default: false, null: false

      

      timestamps()
    end

    create unique_index(:trails, [:name])

  end
end
