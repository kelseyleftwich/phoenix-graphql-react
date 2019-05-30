defmodule Perimeter.Repo do
  use Ecto.Repo,
    otp_app: :perimeter,
    adapter: Ecto.Adapters.Postgres
end
