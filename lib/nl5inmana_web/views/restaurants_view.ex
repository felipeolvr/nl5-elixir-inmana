defmodule Nl5inmanaWeb.RestaurantsView do
  use Nl5inmanaWeb, :view

  def render("create.json", %{restaurant: restaurant}) do
    %{
      message: "Restaurante Criado",
      restaurant: restaurant
    }
  end
end
