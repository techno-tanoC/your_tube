defmodule YourTube.Repo do
  use Ecto.Repo, otp_app: :your_tube, adapter: Sqlite.Ecto2
end
