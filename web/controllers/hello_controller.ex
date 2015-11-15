defmodule HelloPhoenix.HelloController do
  use HelloPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{ "messenger" => messenger } = params) do
    render conn, messenger: messenger
  end
end
