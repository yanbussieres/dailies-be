defmodule Dailies.EntriesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Dailies.Entries` context.
  """

  @doc """
  Generate a win.
  """
  def win_fixture(attrs \\ %{}) do
    {:ok, win} =
      attrs
      |> Enum.into(%{
        content: []
      })
      |> Dailies.Entries.create_win()

    win
  end
end
