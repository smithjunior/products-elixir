defmodule ProductApp do

  @moduledoc """
  Documentation for `ProductApp`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ProductApp.hello()
      [
        %ProductApp.Product{name: "Product 1", value: 9},
        %ProductApp.Product{name: "Product 1", value: 10},
        %ProductApp.Product{name: "Product 2", value: 13}
      ]

  """
  def hello do
    create_product_list()
    |> sort_products
  end

  defp create_product_list do
    [
      %ProductApp.Product{name: "Product 1", value: 10},
      %ProductApp.Product{name: "Product 2", value: 13},
      %ProductApp.Product{name: "Product 3", value: 9}
    ]
  end

  defp sort_products(product_list) do
    Enum.sort(product_list, &(&1.value < &2.value ))
  end
end
