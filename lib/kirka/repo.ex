defmodule Kirka.Repo do
  use Ecto.Repo,
    otp_app: :kirka,
    adapter: Ecto.Adapters.Postgres
end
