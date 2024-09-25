# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     AshShop.Repo.insert!(%AshShop.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

products = [
  %{name: "Laptop", description: "High-performance laptop for work and gaming"},
  %{name: "Smartphone", description: "Latest model with advanced camera features"},
  %{name: "Headphones", description: "Noise-cancelling wireless headphones"},
  %{name: "Smartwatch", description: "Fitness tracker with heart rate monitor"},
  %{name: "Tablet", description: "Lightweight tablet for productivity on-the-go"},
  %{name: "Coffee Maker", description: "Programmable coffee maker with built-in grinder"},
  %{name: "Bluetooth Speaker", description: "Portable speaker with 360-degree sound"},
  %{name: "Electric Toothbrush", description: "Rechargeable toothbrush with multiple modes"},
  %{name: "Air Purifier", description: "HEPA filter air purifier for large rooms"},
  %{name: "Robot Vacuum", description: "Smart robot vacuum with mapping technology"},
  %{name: "Smart Thermostat", description: "Programmable thermostat for home automation"}
]

Enum.each(products, fn product ->
  AshShop.Shop.create_product(product)
  # or AshShop.Shop.Product |> Ash.Changeset.for_create(:create, product) |> Ash.create!()
end)

IO.puts("Seeded #{length(products)} products")
