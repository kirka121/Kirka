defmodule KirkaWeb.Router do
  use KirkaWeb, :router

  pipeline :browser do
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  forward("/graphql",  Absinthe.Plug,          schema: Kirka.Schema)
  forward("/graphiql", Absinthe.Plug.GraphiQL, schema: Kirka.Schema)

  scope "/", KirkaWeb do
    pipe_through :browser

    get "/", PageController, :index
  end
end
