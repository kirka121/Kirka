defmodule KirkaWeb.PageController do
  use KirkaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
