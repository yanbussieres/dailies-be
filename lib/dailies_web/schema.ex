defmodule DailiesWeb.Schema do
  @moduledoc """
  Schema used to serve graphql requests
  """
  use Absinthe.Schema

  alias DailiesWeb.WinsResolver

  object :win do
    field :id, non_null(:id)
    field :content, non_null(:string)
  end

  query do
    @desc "Get all wins"
    field :all_wins, non_null(list_of(non_null(:win))) do
      resolve(&WinsResolver.all_links/3)
    end
  end
end
