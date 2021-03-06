defmodule Perimeter.TrailsTest do
  use Perimeter.DataCase

  alias Perimeter.Trails

  describe "trailheads" do
    alias Perimeter.Trails.Trailhead

    @valid_attrs %{latitude: 120.5, longitude: 120.5, name: "some name"}
    @update_attrs %{latitude: 456.7, longitude: 456.7, name: "some updated name"}
    @invalid_attrs %{latitude: nil, longitude: nil, name: nil}

    def trailhead_fixture(attrs \\ %{}) do
      {:ok, trailhead} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Trails.create_trailhead()

      trailhead
    end

    test "list_trailheads/0 returns all trailheads" do
      trailhead = trailhead_fixture()
      assert Trails.list_trailheads() == [trailhead]
    end

    test "get_trailhead!/1 returns the trailhead with given id" do
      trailhead = trailhead_fixture()
      assert Trails.get_trailhead!(trailhead.id) == trailhead
    end

    test "create_trailhead/1 with valid data creates a trailhead" do
      assert {:ok, %Trailhead{} = trailhead} = Trails.create_trailhead(@valid_attrs)
      assert trailhead.latitude == 120.5
      assert trailhead.longitude == 120.5
      assert trailhead.name == "some name"
    end

    test "create_trailhead/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Trails.create_trailhead(@invalid_attrs)
    end

    test "update_trailhead/2 with valid data updates the trailhead" do
      trailhead = trailhead_fixture()
      assert {:ok, %Trailhead{} = trailhead} = Trails.update_trailhead(trailhead, @update_attrs)
      assert trailhead.latitude == 456.7
      assert trailhead.longitude == 456.7
      assert trailhead.name == "some updated name"
    end

    test "update_trailhead/2 with invalid data returns error changeset" do
      trailhead = trailhead_fixture()
      assert {:error, %Ecto.Changeset{}} = Trails.update_trailhead(trailhead, @invalid_attrs)
      assert trailhead == Trails.get_trailhead!(trailhead.id)
    end

    test "delete_trailhead/1 deletes the trailhead" do
      trailhead = trailhead_fixture()
      assert {:ok, %Trailhead{}} = Trails.delete_trailhead(trailhead)
      assert_raise Ecto.NoResultsError, fn -> Trails.get_trailhead!(trailhead.id) end
    end

    test "change_trailhead/1 returns a trailhead changeset" do
      trailhead = trailhead_fixture()
      assert %Ecto.Changeset{} = Trails.change_trailhead(trailhead)
    end
  end

  describe "trails" do
    alias Perimeter.Trails.Trail

    @valid_attrs %{foot_travel_only: true, length: 120.5, name: "some name"}
    @update_attrs %{foot_travel_only: false, length: 456.7, name: "some updated name"}
    @invalid_attrs %{foot_travel_only: nil, length: nil, name: nil}

    def trail_fixture(attrs \\ %{}) do
      {:ok, trail} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Trails.create_trail()

      trail
    end

    test "list_trails/0 returns all trails" do
      trail = trail_fixture()
      assert Trails.list_trails() == [trail]
    end

    test "get_trail!/1 returns the trail with given id" do
      trail = trail_fixture()
      assert Trails.get_trail!(trail.id) == trail
    end

    test "create_trail/1 with valid data creates a trail" do
      assert {:ok, %Trail{} = trail} = Trails.create_trail(@valid_attrs)
      assert trail.foot_travel_only == true
      assert trail.length == 120.5
      assert trail.name == "some name"
    end

    test "create_trail/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Trails.create_trail(@invalid_attrs)
    end

    test "update_trail/2 with valid data updates the trail" do
      trail = trail_fixture()
      assert {:ok, %Trail{} = trail} = Trails.update_trail(trail, @update_attrs)
      assert trail.foot_travel_only == false
      assert trail.length == 456.7
      assert trail.name == "some updated name"
    end

    test "update_trail/2 with invalid data returns error changeset" do
      trail = trail_fixture()
      assert {:error, %Ecto.Changeset{}} = Trails.update_trail(trail, @invalid_attrs)
      assert trail == Trails.get_trail!(trail.id)
    end

    test "delete_trail/1 deletes the trail" do
      trail = trail_fixture()
      assert {:ok, %Trail{}} = Trails.delete_trail(trail)
      assert_raise Ecto.NoResultsError, fn -> Trails.get_trail!(trail.id) end
    end

    test "change_trail/1 returns a trail changeset" do
      trail = trail_fixture()
      assert %Ecto.Changeset{} = Trails.change_trail(trail)
    end
  end
end
