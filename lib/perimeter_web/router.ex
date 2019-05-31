defmodule PerimeterWeb.Router do
  use PerimeterWeb, :router

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

  scope "/", PerimeterWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/trails", TrailController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api" do
    pipe_through(:api)  #pipeline through which the request have to be routed

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: PerimeterWeb.Schema,
      interface: :simple,
      context: %{pubsub: PerimeterWeb.Endpoint}
  end
end
