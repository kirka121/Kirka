defmodule Kirka.Schema do
  use Absinthe.Schema

  import_types Kirka.Schema.DataTypes

  query do
    @desc "Get a list of posts"
    field :posts, list_of(:post) do
      resolve fn _parent, _args, _resolution ->
        {:ok, Kirka.Rants.list_posts()}
      end
    end
  end
end
