defmodule Plantguru.Users.User do
  use Ecto.Schema
  use Pow.Ecto.Schema

  schema "users" do
    pow_user_fields()
    many_to_many(
      :devices,
      Device,
      join_through: "user_device",
      on_replace: :delete
    )
    timestamps()
  end
end
