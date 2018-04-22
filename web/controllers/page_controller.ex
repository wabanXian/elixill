defmodule Elixill.PageController do
  use Elixill.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
