defmodule PlantguruWeb.DashboardController do
    use PlantguruWeb, :controller

    alias  Plantguru.Devices

    def dashboard(conn, _params) do
      devices = Devices.list_devices(conn.assigns.current_user)
      render(conn, "dashboard.html", devices: devices)
    end

  end