defmodule Dailies.Repo do
  use Ecto.Repo,
    otp_app: :dailies,
    adapter: Ecto.Adapters.Postgres
end
