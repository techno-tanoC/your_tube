defmodule YourTube.Item do
  use YourTube.Web, :model

  schema "items" do
    field :title, :string
    field :movie_id, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :movie_id])
    |> validate_required([:title, :movie_id])
  end
end
