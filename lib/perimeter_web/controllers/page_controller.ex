defmodule PerimeterWeb.PageController do
  use PerimeterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
