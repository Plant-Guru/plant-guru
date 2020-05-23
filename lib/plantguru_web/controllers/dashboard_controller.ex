defmodule PlantguruWeb.DashboardController do
    use PlantguruWeb, :controller

    alias  Plantguru.Devices

    def dashboard(conn, _params) do
      devices = Devices.list_devices(conn.assigns.current_user)
      devices_count = Devices.devices_count(conn.assigns.current_user)
      devices_count_online = Devices.devices_count_online(conn.assigns.current_user)
      devices_count_active = Devices.devices_count_active(conn.assigns.current_user)
      render(conn, "dashboard.html", devices: devices, devices_count: devices_count, devices_count_online: devices_count_online, devices_count_active: devices_count_active)
    end

  end