defmodule Blogger.Repo do
  use Ecto.Repo,
    otp_app: :blogger,
    adapter: Ecto.Adapters.Postgres
end
