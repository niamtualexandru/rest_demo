defmodule RestDemo.PageController do
  use RestDemo.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
