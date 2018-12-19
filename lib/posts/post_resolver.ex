defmodule Kirka.Web.Posts.PostResolver do
  alias Kirka.Posts

  def all(_args, _info) do
    {:ok, Posts.list()}
  end

  def find(%{id: id}, _info) do
    case Posts.find(id) do
      nil -> {:error, "Post by id #{id} not found!"}
      post -> {:ok, post}
    end
  end

  def create do

  end

  def update do

  end

  def delete do

  end
end
