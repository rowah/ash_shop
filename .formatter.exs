[
  # add dependencies to our .formatter.exs to ensure consistent formatting when using mix format
  import_deps: [:ecto, :ecto_sql, :phoenix, :ash, :ash_phoenix, :ash_postgres],
  subdirectories: ["priv/*/migrations"],
  plugins: [Phoenix.LiveView.HTMLFormatter],
  inputs: ["*.{heex,ex,exs}", "{config,lib,test}/**/*.{heex,ex,exs}", "priv/*/seeds.exs"]
]
