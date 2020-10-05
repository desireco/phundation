defmodule Phoundation.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Phoundation.Repo,
      # Start the Telemetry supervisor
      PhoundationWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Phoundation.PubSub},
      # Start the Endpoint (http/https)
      PhoundationWeb.Endpoint
      # Start a worker by calling: Phoundation.Worker.start_link(arg)
      # {Phoundation.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Phoundation.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    PhoundationWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
