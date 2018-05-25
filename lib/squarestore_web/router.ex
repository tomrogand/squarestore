defmodule SquarestoreWeb.Router do
  use SquarestoreWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SquarestoreWeb do
    pipe_through :browser # Use the default browser stack
    get "/", PageController, :index
    get "/product", ProductController, :index
	get "/products", ProductsController, :index
    get "/reguser", RegUserController, :index
	get "/userpage", UserPageController, :index
	get "/login", LoginController, :index
	get "/tos", TosController, :index
  	get "/about", AboutController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", SquarestoreWeb do
  #   pipe_through :api
  # end
end
