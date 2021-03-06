defmodule Plantguru.Devices do
    alias Plantguru.Repo
    alias Plantguru.Users.User
    alias Plantguru.Devices.Device
    def list_devices(%User{} = user) do
        Repo.all(Ecto.assoc(user, :devices))
    end

    def devices_count(%User{} = user) do
        Repo.aggregate(
            Ecto.assoc(user, :devices),
            :count
        )
    end

    def devices_count_online(%User{} = user) do
        # @todo replace with correct status filter
        Repo.aggregate(
            Ecto.assoc(user, :devices),
            :count
        )
    end


    def devices_count_active(%User{} = user) do
        # @todo replace with correct status filter
        Repo.aggregate(
            Ecto.assoc(user, :devices),
            :count
        )
    end

    def change_device(%Device{} = device) do
        Device.changeset(device, %{})
    end
end