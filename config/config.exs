# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :nl5inmana,
  ecto_repos: [Nl5inmana.Repo]

config :nl5inmana, Nl5inmana.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures the endpoint
config :nl5inmana, Nl5inmanaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4jgS1Gla3NyHWQa3dpShoOydFWgmkcHWlnuU/W0nEJnsUC4ue+Q3Vpt1SffbzPqF",
  render_errors: [view: Nl5inmanaWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Nl5inmana.PubSub,
  live_view: [signing_salt: "dDN4lH8r"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
