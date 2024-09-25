defmodule AshShop.Shop do
  use Ash.Domain

  resources do
    resource AshShop.Shop.Product do
      # Define an interface for calling resource actions.
      define :create_product, action: :create
      define :list_products, action: :read
      define :update_product, action: :update
      define :destroy_product, action: :destroy
      define :get_product, args: [:id], action: :by_id
    end
  end
end
