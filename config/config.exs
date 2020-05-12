# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :plantguru,
  ecto_repos: [Plantguru.Repo]

# Configures the endpoint
config :plantguru, PlantguruWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oKgyGcNlahT/Qa9bQmOYOq13IIa7knpuxn/Q3cKYQFa6P6MmKjVsD3UeE+rkdotd",
  render_errors: [view: PlantguruWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Plantguru.PubSub,
  live_view: [signing_salt: "lVQK3pFp"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :plantguru, :pow,
  user: Plantguru.Users.User,
  repo: Plantguru.Repo

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
