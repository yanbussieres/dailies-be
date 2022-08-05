defmodule Dailies.Entries.Win do
  use Ecto.Schema
  import Ecto.Changeset

  schema "wins" do
    field :content, {:array, :string}

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(win, attrs) do
    win
    |> cast(attrs, [:content])
    |> validate_required([:content])
  end
end
