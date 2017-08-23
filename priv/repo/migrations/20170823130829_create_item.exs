defmodule YourTube.Repo.Migrations.CreateItem do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :title, :string
      add :movie_id, :string

      timestamps()
    end

  end
end
