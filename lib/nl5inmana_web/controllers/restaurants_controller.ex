defmodule Nl5inmanaWeb.RestaurantsController do
  use Nl5inmanaWeb, :controller
  alias Nl5inmana.Restaurant
  alias Nl5inmana.Restaurants.Create
  alias Nl5inmanaWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %Restaurant{} = restaurant} <- Create.call(params) do
      conn
      |> put_status(:created)
      |> render("create.json", restaurant: restaurant)
    end
  end
end
