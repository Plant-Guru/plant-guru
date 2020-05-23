defmodule Plantguru.Devices do
    import Ecto.Query
    alias Plantguru.Repo
    alias Plantguru.Devices.Device
    alias Plantguru.Users.User
    def list_devices(%User{} = user) do
        Repo.all(Ecto.assoc(user, :devices))

        # Repo.all(
        #     from d in Device,
        #     preload: [:users],
        #     join: du in UserDevice, on: d.id == du.device_id,
        #     join: u in User, on: u.id == du.user_id,
        #     where: du.user_id == ^user_id
        # )
    end
end