defmodule Nl5inmana.Repo do
  use Ecto.Repo,
    otp_app: :nl5inmana,
    adapter: Ecto.Adapters.Postgres
end
