defmodule CommunityWeb.Schema do
  use Absinthe.Schema
  # alias CommunityWeb.NewsResolver

  # object :link do
  #   field :id, non_null(:id)
  #   field :url, non_null(:string)
  #   field :description, non_null(:string)
  # end

  query do
    # field :all_links, non_null(list_of(non_null(:link))) do
    #   resolve &NewsResolver.all_links/3
    # end
    field :hello, :string do
      resolve fn _, _ -> {:ok, "world!"} end
    end
  end
end
