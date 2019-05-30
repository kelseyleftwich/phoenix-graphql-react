# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :perimeter,
  ecto_repos: [Perimeter.Repo]

# Configures the endpoint
config :perimeter, PerimeterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ePUAMqqoJ1qmyvhZFCMczX3gBNOfcSszJwMxvkTHZ1uJXDzQXu59E6CR2+AIQGvL",
  render_errors: [view: PerimeterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Perimeter.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
