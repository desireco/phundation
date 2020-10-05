defmodule PhoundationWeb.PageController do
  use PhoundationWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
