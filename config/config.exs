# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rest_demo,
  ecto_repos: [RestDemo.Repo]

# Configures the endpoint
config :rest_demo, RestDemo.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "td1c4V39UjH971QdS5mgV/SDNur0kymj9ILvudH0fSx880nYXqLkVCcm1xs4AvZP",
  render_errors: [view: RestDemo.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RestDemo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
