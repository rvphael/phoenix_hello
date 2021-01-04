# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_hello,
  ecto_repos: [PhoenixHello.Repo]

# Configures the endpoint
config :phoenix_hello, PhoenixHelloWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BZGojleYJyzW0G4Q/fchNTVqhUxAgyTW8mV41kXryYJQFJzD5Q1Z8NYcmaZ5nHuf",
  render_errors: [view: PhoenixHelloWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixHello.PubSub,
  live_view: [signing_salt: "NovdEMy8"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
