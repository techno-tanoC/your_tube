# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :your_tube,
  ecto_repos: [YourTube.Repo]

# Configures the endpoint
config :your_tube, YourTube.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vixigU72xZX9rSABmPahVlE0gnZL4rz2nNVza1OEBmOfiVNqCZ2uB9gs+Xr0zA/9",
  render_errors: [view: YourTube.ErrorView, accepts: ~w(html json)],
  pubsub: [name: YourTube.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
