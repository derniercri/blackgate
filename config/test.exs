use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hibou, HibouWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :hibou, Hibou.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "postgres",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  port: System.get_env("PGPORT") || 3543,
  pool_size: 10
