defmodule AshShop.Repo do
  use AshPostgres.Repo, otp_app: :ash_shop

  # Installs extensions that ash commonly uses
  def installed_extensions do
    ["ash-functions", "uuid-ossp", "citext"]
  end
end
