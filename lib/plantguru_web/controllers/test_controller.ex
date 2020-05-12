defmodule PlantguruWeb.TestController do
    use PlantguruWeb, :controller

    def dashboard(conn, _params) do
      render(conn, "dashboard.html")
    end

  end