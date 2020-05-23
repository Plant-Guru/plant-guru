defmodule Plantguru.Device do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "devices" do
    field :balena_device_id, :string
    field :last_active, :utc_datetime
    field :mac, :string
    field :name, :string

    many_to_many(
      :users,
      User,
      join_through: "user_device",
      on_replace: :delete
    )

    timestamps()
  end

  @doc false
  def changeset(device, attrs) do
    device
    |> cast(attrs, [:name, :mac, :last_active, :balena_device_id])
    |> validate_required([:name, :mac, :last_active, :balena_device_id])
  end
end
