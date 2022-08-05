defmodule Dailies.Repo.Migrations.CreateWins do
  use Ecto.Migration

  def change do
    create table(:wins) do
      add :content, {:array, :string}

      timestamps()
    end
  end
end
