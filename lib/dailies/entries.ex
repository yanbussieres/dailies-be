defmodule Dailies.Entries do
  @moduledoc """
  The Entries context.
  """

  import Ecto.Query, warn: false
  alias Dailies.Repo

  alias Dailies.Entries.Win

  @doc """
  Returns the list of wins.

  ## Examples

      iex> list_wins()
      [%Win{}, ...]

  """
  def list_wins do
    Repo.all(Win)
  end

  @doc """
  Gets a single win.

  Raises `Ecto.NoResultsError` if the Win does not exist.

  ## Examples

      iex> get_win!(123)
      %Win{}

      iex> get_win!(456)
      ** (Ecto.NoResultsError)

  """
  def get_win!(id), do: Repo.get!(Win, id)

  @doc """
  Creates a win.

  ## Examples

      iex> create_win(%{field: value})
      {:ok, %Win{}}

      iex> create_win(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_win(attrs \\ %{}) do
    %Win{}
    |> Win.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a win.

  ## Examples

      iex> update_win(win, %{field: new_value})
      {:ok, %Win{}}

      iex> update_win(win, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_win(%Win{} = win, attrs) do
    win
    |> Win.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a win.

  ## Examples

      iex> delete_win(win)
      {:ok, %Win{}}

      iex> delete_win(win)
      {:error, %Ecto.Changeset{}}

  """
  def delete_win(%Win{} = win) do
    Repo.delete(win)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking win changes.

  ## Examples

      iex> change_win(win)
      %Ecto.Changeset{data: %Win{}}

  """
  def change_win(%Win{} = win, attrs \\ %{}) do
    Win.changeset(win, attrs)
  end
end
