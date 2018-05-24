defmodule SquarestoreWeb.LoginController do
  use SquarestoreWeb, :controller

  def index(conn, _params) do
    render conn, "login.html"
  end
end
