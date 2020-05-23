defmodule PlantguruWeb.Pow.Routes do
    use Pow.Phoenix.Routes
    alias PlantguruWeb.Router.Helpers, as: Routes

    def after_sign_in_path(conn), do: Routes.dashboard_path(conn, :dashboard)

    def after_sign_out_path(conn), do: Routes.landing_path(conn, :page)
  end