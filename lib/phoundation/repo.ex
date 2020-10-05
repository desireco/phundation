defmodule Phoundation.Repo do
  use Ecto.Repo,
    otp_app: :Phoundation,
    adapter: Ecto.Adapters.Postgres
end
