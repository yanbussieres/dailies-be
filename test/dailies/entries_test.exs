defmodule Dailies.EntriesTest do
  use Dailies.DataCase

  alias Dailies.Entries

  describe "wins" do
    alias Dailies.Entries.Win

    import Dailies.EntriesFixtures

    @invalid_attrs %{content: nil}

    test "list_wins/0 returns all wins" do
      win = win_fixture()
      assert Entries.list_wins() == [win]
    end

    test "get_win!/1 returns the win with given id" do
      win = win_fixture()
      assert Entries.get_win!(win.id) == win
    end

    test "create_win/1 with valid data creates a win" do
      valid_attrs = %{content: []}

      assert {:ok, %Win{} = win} = Entries.create_win(valid_attrs)
      assert win.content == []
    end

    test "create_win/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Entries.create_win(@invalid_attrs)
    end

    test "update_win/2 with valid data updates the win" do
      win = win_fixture()
      update_attrs = %{content: []}

      assert {:ok, %Win{} = win} = Entries.update_win(win, update_attrs)
      assert win.content == []
    end

    test "update_win/2 with invalid data returns error changeset" do
      win = win_fixture()
      assert {:error, %Ecto.Changeset{}} = Entries.update_win(win, @invalid_attrs)
      assert win == Entries.get_win!(win.id)
    end

    test "delete_win/1 deletes the win" do
      win = win_fixture()
      assert {:ok, %Win{}} = Entries.delete_win(win)
      assert_raise Ecto.NoResultsError, fn -> Entries.get_win!(win.id) end
    end

    test "change_win/1 returns a win changeset" do
      win = win_fixture()
      assert %Ecto.Changeset{} = Entries.change_win(win)
    end
  end
end
