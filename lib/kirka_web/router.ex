defmodule KirkaWeb.Router do
  use KirkaWeb, :router

  pipeline :browser do
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", KirkaWeb do
    pipe_through :browser

    get "/", PageController, :index

    forward("/graphql",  Absinthe.Plug,          schema: Kirka.Web.Schema)
    forward("/graphiql", Absinthe.Plug.GraphiQL, schema: Kirka.Web.Schema)
  end
end
