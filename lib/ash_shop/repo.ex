defmodule AshShop.Repo do
  use Ecto.Repo,
    otp_app: :ash_shop,
    adapter: Ecto.Adapters.Postgres
end
