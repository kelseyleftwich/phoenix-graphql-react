# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Perimeter.Repo.insert!(%Perimeter.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Perimeter.Trails.Trailhead
alias Perimeter.Trails.Trail
alias Perimeter.Repo

%Trailhead{name: "University Gates (East)", latitude: 35.209971, longitude: -85.898189} |> Repo.insert!
%Trailhead{name: "Green's View", latitude: 35.217451, longitude: -85.918485,} |> Repo.insert!
%Trail{name: "Morgan's Steep to the Memorial Cross", length: 1.0, foot_travel_only: true} |> Repo.insert!
%Trail{name: "Northwest Section", length: 8.5, foot_travel_only: true} |> Repo.insert!
