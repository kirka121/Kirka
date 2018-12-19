# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :kirka,
  ecto_repos: [Kirka.Repo]

# Configures the endpoint
config :kirka, KirkaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0XkVyLqHCQpmY6PdMce7TcS4Us8OculLRRJAPcm7ohCAy/E6iS+0Jyw8ez4HB69E",
  render_errors: [view: KirkaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Kirka.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
