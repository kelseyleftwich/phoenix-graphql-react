defmodule Perimeter.Trails do
  @moduledoc """
  The Trails context.
  """

  import Ecto.Query, warn: false
  alias Perimeter.Repo

  alias Perimeter.Trails.Trailhead

  @doc """
  Returns the list of trailheads.

  ## Examples

      iex> list_trailheads()
      [%Trailhead{}, ...]

  """
  def list_trailheads do
    Repo.all(Trailhead)
  end

  @doc """
  Gets a single trailhead.

  Raises `Ecto.NoResultsError` if the Trailhead does not exist.

  ## Examples

      iex> get_trailhead!(123)
      %Trailhead{}

      iex> get_trailhead!(456)
      ** (Ecto.NoResultsError)

  """
  def get_trailhead!(id), do: Repo.get!(Trailhead, id)

  @doc """
  Creates a trailhead.

  ## Examples

      iex> create_trailhead(%{field: value})
      {:ok, %Trailhead{}}

      iex> create_trailhead(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_trailhead(attrs \\ %{}) do
    %Trailhead{}
    |> Trailhead.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a trailhead.

  ## Examples

      iex> update_trailhead(trailhead, %{field: new_value})
      {:ok, %Trailhead{}}

      iex> update_trailhead(trailhead, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_trailhead(%Trailhead{} = trailhead, attrs) do
    trailhead
    |> Trailhead.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Trailhead.

  ## Examples

      iex> delete_trailhead(trailhead)
      {:ok, %Trailhead{}}

      iex> delete_trailhead(trailhead)
      {:error, %Ecto.Changeset{}}

  """
  def delete_trailhead(%Trailhead{} = trailhead) do
    Repo.delete(trailhead)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking trailhead changes.

  ## Examples

      iex> change_trailhead(trailhead)
      %Ecto.Changeset{source: %Trailhead{}}

  """
  def change_trailhead(%Trailhead{} = trailhead) do
    Trailhead.changeset(trailhead, %{})
  end
end
