# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :twitter_monitor,
  ecto_repos: [TwitterMonitor.Repo]

# Configures the endpoint
config :twitter_monitor, TwitterMonitor.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lvGtg0tYVh8T/yUd7rl1Exf1BWqKXUdH946Bm8JRqPPhk34iPtEQzE/AZx8W4o4G",
  render_errors: [view: TwitterMonitor.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TwitterMonitor.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: TwitterMonitor.User,
  repo: TwitterMonitor.Repo,
  module: TwitterMonitor,
  logged_out_url: "/",
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:confirmable, :authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :registerable]

config :coherence, TwitterMonitor.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%
