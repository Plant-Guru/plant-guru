defmodule PlantguruWeb.LandingController do
    use PlantguruWeb, :controller

    def page(conn, _params) do
      render(conn, "page.html")
    end
end