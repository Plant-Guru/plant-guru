defmodule PlantguruWeb.DeviceController do
    use PlantguruWeb, :controller

    alias  Plantguru.Devices
    alias  Plantguru.Devices.Device

    def index(conn, _params) do
      devices = Devices.list_devices(conn.assigns.current_user)
      render(conn, "devices.html", devices: devices)
    end

    def new(conn, _params) do
      changeset = Devices.change_device(%Device{})
      render(conn, "new.html", changeset: changeset)
    end

  end