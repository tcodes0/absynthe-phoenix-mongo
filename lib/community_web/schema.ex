defmodule CommunityWeb.Schema do
  use Absinthe.Schema
  alias CommunityWeb.NewsResolver

  object :link do
    field(:id, non_null(:id))
    field(:url, non_null(:string))
    field(:description, non_null(:string))
  end

  query do
    field :all_links, non_null(list_of(non_null(:link))) do
      resolve(&NewsResolver.all_links/3)
    end

    field :hello, :string do
      resolve(fn _, _ ->
        conn = case Mongo.start_link(name: :mongo) do
          {:ok, conn} ->
            IO.puts ":ok"
            conn
            {:error, {:already_started, conn}} ->
              IO.puts ":already"
              conn
          {:error, error} -> raise error
        end
        # IEx.inspect(conn) |> IO.puts
        Mongo.find(conn, "user", %{})
        |> Enum.to_list()
        |> IO.inspect()

        {:ok, "world!"}
      end)
    end
  end

  mutation do
    field :create_link, :link do
      arg(:url, non_null(:string))
      arg(:description, non_null(:string))

      resolve(&NewsResolver.create_link/3)
    end
  end
end
