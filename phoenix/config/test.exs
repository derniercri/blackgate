use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hibou_example, HibouExampleWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :hibou_example, HibouExample.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "hibou_example_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :hibou_example, HibouExample.Guardian,
  issuer: "hibou_example",
  secret_key: "IiyscTs4H35aVOd9+9aMe4R35oqeZtSyb0cTWp6T3dGydcTmork9RXnXpgoyFQz7"