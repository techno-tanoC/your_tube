defmodule YourTube.PageController do
  use YourTube.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
