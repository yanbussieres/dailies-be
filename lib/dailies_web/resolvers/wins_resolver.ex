defmodule DailiesWeb.WinsResolver do
  @moduledoc """
  TODO
  """
  alias Dailies.Entries

  def all_links(_root, _args, _info) do
    {:ok, Entries.list_wins()}
  end
end
