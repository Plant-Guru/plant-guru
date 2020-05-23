defmodule Plantguru.Devices do
    import Ecto.Query
    alias Plantguru.Repo
    alias Plantguru.Devices.Device
    alias Plantguru.Users.User
    def list_devices(current_user) do
        Device
        |> user_devices_query(current_user)
        |> Repo.all()
    end

    defp user_devices_query(query, %User{id: user_id}) do
        from(v in query, where: v.user_id == ^user_id)
    end
end