defmodule Nl5inmana do
  alias Nl5inmana.Restaurants.Create
  defdelegate create_restaurant(params), to: Create, as: :call
end
