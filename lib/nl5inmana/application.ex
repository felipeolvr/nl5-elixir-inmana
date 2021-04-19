defmodule Nl5inmana.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Nl5inmana.Repo,
      # Start the Telemetry supervisor
      Nl5inmanaWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Nl5inmana.PubSub},
      # Start the Endpoint (http/https)
      Nl5inmanaWeb.Endpoint
      # Start a worker by calling: Nl5inmana.Worker.start_link(arg)
      # {Nl5inmana.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Nl5inmana.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Nl5inmanaWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
